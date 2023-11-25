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
  def dates(command)
    measurements = user_measurements(command).select('DISTINCT ON (measured_at) *').order(measured_at: :desc)

    success(measurements)
  end

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def warnings(command)
    # TODO: add for the last year
    measurements = user_measurements(command).where(warning: %i[LOW HIGH]).order(measured_at: :desc).limit(5)

    actual_warnings = []
    if measurements.exists?
      measurements.each do
        actual_warnings << _1 if highlight?(_1, command)
      end
    end

    success(measurements)
  end

  def entity(command)
    user = users_repository.find(command.user_id)
    return failure(:unprocessable_entity) unless user

    entity = Entity.find_by code: command.entity, gender: user.gender
    return failure(:unprocessable_entity) unless entity

    measurements = Measurement.where entity_id: entity.id, user_id: command.user_id
    success(measurements)
  end

  private

  # @param command [MeasurementsCommand]
  # @return [ActiveRecord::Relation<Measurement>]
  def user_measurements(command) = repository.where user_id: command.user_id

  # @param measurement [Measurement]
  # @param command [MeasurementsCommand]
  # @return [Boolean]
  def highlight?(measurement, command)
    last_measurement = user_measurements(command).where(entity_id: measurement.entity_id).last
    !last_measurement.warning.nil?
  end
end
