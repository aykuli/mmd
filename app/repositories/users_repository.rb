# frozen_string_literal: true

class UsersRepository
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!method where(attributes)
  #   @param attributes [Hash]
  #   @return [User, nil]
  # @!method find_by(attributes)
  #   @param attributes [Hash]
  #   @return [User, nil]
  # @!method create(attributes)
  #   @param attributes [Hash]
  #   @return [User, nil]
  delegate :where, :find_by, :create, to: :model

  private

  # @return [Class<User>]
  def model = User
end
