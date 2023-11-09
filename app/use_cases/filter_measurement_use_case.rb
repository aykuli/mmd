# frozen_string_literal: true

class FilterMeasurementUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [MeasurementsRepository]
  resolve :measurements_repository, as: :repository

  # @param command [FilterMeasurementsCommand]
  # @param user [FilterMeasurementsCommand]
  def call(command, user)
    return failure(:unprocessable_entity) unless [user.id, user.parent_id].include?(command.user_id)

    measurements = repository.where(command.attributes)
    success(measurements)
  end
end
