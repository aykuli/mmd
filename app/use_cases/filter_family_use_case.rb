# frozen_string_literal: true

class FilterFamilyUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [UsersRepository]
  resolve :users_repository, as: :repository

  def call(_command, _user)
    me = repository.where(id: 1)
    relatives = repository.where(parent_id: 1)

    success(me + relatives)
  end
end
