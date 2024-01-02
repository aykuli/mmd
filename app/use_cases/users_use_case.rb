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
  def list(user) = success(user.visible_users.select('*').uniq)

  # @param command [AddUserCommand]
  # @param user [User]
  # @return [SuccessCarrier]
  def add(command, user)
    ActiveRecord::Base.transaction do
      new_user = repository.create(**command.attributes, password: 'password')
      new_user.observers << user
      new_user.observers << new_user
      success(new_user)
    end
  end
end
