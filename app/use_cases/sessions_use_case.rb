# frozen_string_literal: true

class SessionsUseCase
  include DIY::Carrierable
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!attribute [r] repository
  #   @return [SessionsRepository]
  resolve :sessions_repository, as: :repository

  # @param user [User]
  # @return [SuccessCarrier]
  def create(user)
    ActiveRecord::Base.transaction do
      repository.where(user_id: user.id).destroy_all
      success(repository.create!(user:))
    end
  end
end
