# frozen_string_literal: true

module Types
  include Dry.Types()
end

class FilterEntitiesCommand < Dry::Struct
  include ActiveModel::Validations
  include Aux::Pluggable

  register

  # @!attribute [rw] user_id
  #   @return [Integer]
  # @!attribute [rw] limit
  #   @return [Integer]
  # @!attribute [rw] order_by
  #   @return [String]
  # @!attribute [rw] gender
  #   @return [String]
  attribute :user_id, Types::Integer
  attribute :limit, Types::Integer
  attribute :order_by, Types::String
  attribute :gender, Types::String

  validates :user_id, :gender, presence: true
end
