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
  attribute :entity, Types::String

  # @!attribute [rw] measured_at
  #   @return [DateTime]
  attribute :measured_at, Types::DateTime

  # @!attribute [rw] user_id
  #   @return [Integer]
  attribute :user_id, Types::Integer

  validates :user_id, presence: true
end
