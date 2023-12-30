# frozen_string_literal: true

class EntitiesGroupsUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [EntitiesGroupsRepository]
  resolve :entities_groups_repository, as: :repository

  # @return [SuccessCarrier]
  def list = success(repository.all)
end
