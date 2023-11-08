# frozen_string_literal: true

class FilterFamilyUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [UsersRepository]
  resolve :users_repository, as: :repository

  def call(_command, _user)
    byebug
    users = repository.where(id: 1, parent_id: 1)
    byebug
    success(users)
  end
end
