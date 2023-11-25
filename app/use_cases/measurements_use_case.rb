# frozen_string_literal: true

class MeasurementsUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [MeasurementsRepository]
  resolve :measurements_repository, as: :repository

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def dates(command)
    measurements = user_measurements(command).select('DISTINCT ON (measured_at) *').order(measured_at: :desc)

    success(measurements)
  end

  # @param command [MeasurementsCommand]
  # @return [SuccessCarrier]
  def warnings(command)
    measurements = user_measurements(command).where(warning: %i[LOW HIGH]).order(measured_at: :desc).limit(5)

    success(measurements)
  end

  private

  # @param command [MeasurementsCommand]
  # @return [ActiveRecord::Relation<Measurement>]
  def user_measurements(command) = repository.where user_id: command.user_id
end
