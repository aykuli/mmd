# frozen_string_literal: true

class EntitiesUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [EntitiesRepository]
  resolve :entities_repository, as: :repository

  # @param command [FilterEntitiesCommand]
  # @param user [user]
  # @return [SuccessCarrier]
  def filter(command, _user)
    entities = repository.where(**command.attributes)

    success(entities)
  end
end
