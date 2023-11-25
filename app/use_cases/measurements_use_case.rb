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
    user = users_repository.find(command.user_id)
    return failure(:unprocessable_entity) unless user

    entity = Entity.find_by code: command.entity, gender: [user.gender, 'both']
    return failure(:unprocessable_entity) unless entity

    measurements = repository.filter(user_id: command.user_id, entity_id: entity.id)

    success(measurements)
  end

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def list(command)
    measurements = repository.filter(command.attributes).order(measured_at: :desc)

    success(measurements)
  end

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def dates(command)
    measurements = repository.filter(command.attributes).select('DISTINCT ON (measured_at) *').order(measured_at: :desc)

    success(measurements)
  end

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def warnings(command)
    # TODO: filter only for the last year
    measurements = repository.filter(**command.attributes, warning: %i[LOW HIGH]).order(measured_at: :desc)

    actual_warnings = []
    if measurements.exists?
      measurements.each do
        actual_warnings << _1 if highlight?(_1, command)
      end
    end

    success(actual_warnings)
  end

  private

  # @param measurement [Measurement]
  # @param command [MeasurementsCommand]
  # @return [Boolean]
  def highlight?(measurement, command)
    last_measurement = repository.filter(**command.attributes, entity_id: measurement.entity_id).last
    !last_measurement.warning.nil?
  end
end
