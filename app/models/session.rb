class Session < ApplicationRecord
  # @!attribute [rw] user
  #   @return [User]
  belongs_to :user

  # @!method [r] token
  #   @return [String]
  alias_attribute :token, :id
end