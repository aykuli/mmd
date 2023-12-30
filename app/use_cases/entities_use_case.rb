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
    entities = repository.where(gender: [command.gender, :both])

    success(entities)
  end

  # @param command [AddEntityCommand]
  # @return [SuccessCarrier]
  def add(command)
    entity = repository.create(**command.attributes)

    success(entity)
  end
end
