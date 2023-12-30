# frozen_string_literal: true

module Types
  include Dry.Types()
end

class AddMeasurementCommand < Dry::Struct
  include ActiveModel::Validations
  include Aux::Pluggable

  register

  # @!attribute [rw] entity_id
  #   @return [Integer]
  # @!attribute [rw] user_id
  #   @return [Integer]
  # @!attribute [rw] measured_at
  #   @return [DateTime]
  # @!attribute [rw] value
  #   @return [Integer]
  attribute :entity_id, Types::Integer
  attribute :user_id, Types::Integer
  attribute :measured_at, Types::DateTime
  attribute :value, Types::Integer

  validates :entity_id, :user_id, :value, presence: true
end
