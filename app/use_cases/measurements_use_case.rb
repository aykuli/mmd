# frozen_string_literal: true

class MeasurementsUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [MeasurementsRepository]
  resolve :measurements_repository, as: :repository

  # @param command [MeasurementsCommand]
  def dates(command)
    measurements = repository.where(user_id: command.user_id).select('DISTINCT ON (measured_at) *').order(measured_at: :desc)

    success(measurements)
  end

  # @param command [MeasurementsCommand]
  def warnings(command)
    measurements = repository.where(user_id: command.user_id, warning: %i[LOW HIGH]).order(measured_at: :desc).limit(5)

    success(measurements)
  end
end
