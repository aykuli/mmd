# frozen_string_literal: true

class FilterEntitiesUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [EntitiesRepository]
  resolve :entities_repository, as: :repository

  # @param command [FilterEntitiesCommand]
  # @param user [user]
  def call(command, user)
    entities = repository.filter(**command.attributes, user_id: user.id)

    success(entities)
  end
end
