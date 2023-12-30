# frozen_string_literal: true

module Types
  include Dry.Types()
end

class AddEntityCommand < Dry::Struct
  include ActiveModel::Validations
  include Aux::Pluggable

  register

  # @!attribute [rw] title
  #   @return [String]
  # @!attribute [rw] alias
  #   @return [alias]
  # @!attribute [rw] code
  #   @return [String]
  # @!attribute [rw] max
  #   @return [Integer]
  # @!attribute [rw] min
  #   @return [Integer]
  # @!attribute [rw] unit
  #   @return [String]
  # @!attribute [rw] description
  #   @return [String]
  # @!attribute [rw] group_id
  #   @return [Integer]
  # @!attribute [rw] gender
  #   @return [String]
  attribute :title, Types::String
  attribute :alias, Types::String
  attribute :code, Types::String
  attribute :max, Types::Integer
  attribute :min, Types::Integer
  attribute :unit, Types::String
  attribute :description, Types::String
  attribute :group_id, Types::Integer
  attribute :gender, Types::String

  validates :title, :code, :max, :min, :unit, presence: true
end
