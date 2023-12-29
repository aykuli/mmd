# frozen_string_literal: true

class UsersUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [UsersRepository]
  resolve :users_repository, as: :repository

  # @param user [User]
  # @return [SuccessCarrier]
  def family(_command, user)
    me = repository.where(id: user.id)
    relatives = repository.where(parent_id: user.id)

    success(me + relatives)
  end

  # @param command [AddUserCommand]
  # @return [SuccessCarrier]
  def add(command)
    user = repository.create(**command.attributes, password: 'password')

    success(user)
  end
end
