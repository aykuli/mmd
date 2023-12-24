# frozen_string_literal: true

module Types
  include Dry.Types()
end

class MeasurementsCommand < Dry::Struct
  include ActiveModel::Validations
  include Aux::Pluggable

  register

  # @!attribute [rw] entity
  #   @return [String]
  # @!attribute [rw] measured_at
  #   @return [DateTime]
  # @!attribute [rw] limit
  #   @return [Integer]
  # @!attribute [rw] user_id
  #   @return [Integer]
  attribute :entity, Types::String
  attribute :measured_at, Types::DateTime
  attribute :limit, Types::Integer
  attribute :user_id, Types::Integer

  validates :user_id, presence: true
end
