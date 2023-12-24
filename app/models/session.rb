# frozen_string_literal: true

class Session < ApplicationRecord
  # @!attribute [rw] user
  #   @return [User]
  belongs_to :user

  # @!method [r] token
  #   @return [String]
  alias_attribute :token, :id

  def self.sweep(time = 1.hour)
    where(updated_at: time.ago).or(where(created_at: 1.day.ago)).delete_all
  end
end
