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
  # @!attribute [r] entities_repository
  #   @return [EntitiesRepository]
  resolve :entities_repository

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def entity(command)
    user = users_repository.find_by(id: command.user_id)
    return failure(:unprocessable_entity) unless user

    entity = Entity.find_by code: command.entity, gender: [user.gender, 'both']
    return failure(:unprocessable_entity) unless entity

    success(repository.where(user_id: command.user_id, entity_id: entity.id).order(:measured_at))
  end

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def list(command)
    success(repository.where(command.attributes.except(:limit)).order(measured_at: :desc))
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

  # @param command [AllMeasurementsCommand]
  # @return [SuccessCarrier]
  def all(command)
    success(repository.where(**command.attributes.except(:grouped_by)))
  end

  # @param command [AddMeasurementCommand]
  # @return [SuccessCarrier,FailureCarrier]
  def add(command)
    user = users_repository.find_by(id: command.user_id)
    return failure(:unprocessable_entity) unless user

    entity = entities_repository.find_by(id: command.entity_id)
    return failure(:unprocessable_entity) unless entity

    warning = get_warning(command, entity)

    ActiveRecord::Base.transaction do
      success(user.measurements.create(**command.attributes.except(:user_id), warning:))
    end
  end

  # @param command [EditMeasurementCommand]
  # @return [SuccessCarrier,FailureCarrier]
  def edit(command)
    measurement = repository.find_by(id: command.id)
    return failure(:unprocessable_entity) unless measurement

    ActiveRecord::Base.transaction do
      measurement.update!(**command.attributes.except(:id))
    end

    success(measurement)
  end

  # @param command [EditMeasurementCommand]
  # @return [SuccessCarrier,FailureCarrier]
  def delete(command)
    measurement = repository.find_by(id: command.id)
    return failure(:unprocessable_entity) unless measurement

    ActiveRecord::Base.transaction {      measurement.destroy! }

    success
  end

  private

  # @param command [AddMeasurementCommand]
  # @param entity [Entity]
  def get_warning(command, entity)
    if BigDecimal(command.value) > entity.max
      :HIGH
    elsif BigDecimal(command.value) < entity.min
      :LOW
    end
  end

  # @param measurement [Measurement]
  # @param command [MeasurementsCommand]
  # @return [Boolean]
  def highlight?(measurement, command)
    last_measurement = repository.where(**command.attributes, entity_id: measurement.entity_id).last
    !last_measurement.warning.nil?
  end
end
