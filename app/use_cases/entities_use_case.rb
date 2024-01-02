# frozen_string_literal: true

class EntitiesUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [EntitiesRepository]
  resolve :entities_repository, as: :repository

  # @param command [FilterEntitiesCommand]
  # @return [SuccessCarrier]
  def filter(command)
    success(repository.where(gender: [command.gender, :both]).order(:measured_at))
  end

  # @param command [AddEntityCommand]
  # @return [SuccessCarrier]
  def add(command)
    ActiveRecord::Base.transaction do
      success(repository.create(**command.attributes))
    end
  end
end
