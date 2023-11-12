# frozen_string_literal: true

class MeasurementsUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [MeasurementsRepository]
  resolve :measurements_repository, as: :repository

  # @param command [DatesMeasurementsCommand]
  def dates(command, *)
    measurements = Measurement.where(user_id: command.user_id).select('DISTINCT ON (measured_at) *').order(measured_at: :desc)

    success(measurements)
  end

  # @param command [FilterMeasurementsCommand]
  # @param user [User]
  def filter(command, _user)
    measurements = repository.where(command.attributes.compact).order(measured_at: :desc).limit(5)

    success(measurements)
  end
end
