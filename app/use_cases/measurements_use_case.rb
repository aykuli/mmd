# frozen_string_literal: true

class MeasurementsUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [MeasurementsRepository]
  resolve :measurements_repository, as: :repository
  # @!attribute [r] users_repository
  #   @return [UsersRepository]
  resolve :users_repository

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def entity(command)
    user = users_repository.find_by(id: command.user_id)
    return failure(:unprocessable_entity) unless user

    entity = Entity.find_by code: command.entity, gender: [user.gender, 'both']
    return failure(:unprocessable_entity) unless entity

    measurements = repository.where(user_id: command.user_id, entity_id: entity.id)

    success(measurements)
  end

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def list(command)
    measurements = repository.where(command.attributes.except(:limit)).order(measured_at: :desc)

    success(measurements)
  end

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def dates(command)
    measurements = repository.where(command.attributes.except(:limit)).select('DISTINCT ON (measured_at) *').order(measured_at: :desc)
    measurements = measurements.limit(command.limit) if command.limit

    success(measurements)
  end

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def warnings(command)
    measurements = repository.where(**command.attributes, warning: %i[LOW HIGH]).order(measured_at: :desc)

    actual_warnings = []
    if measurements.exists?
      measurements.each do
        actual_warnings << _1 if highlight?(_1, command) && _1.measured_at > 1.year.ago
      end
    end

    success(actual_warnings)
  end

  def all(command)
    measurements = repository.where(**command.attributes)

    success(measurements)
  end

  private

  # @param measurement [Measurement]
  # @param command [MeasurementsCommand]
  # @return [Boolean]
  def highlight?(measurement, command)
    last_measurement = repository.where(**command.attributes, entity_id: measurement.entity_id).last
    !last_measurement.warning.nil?
  end
end
