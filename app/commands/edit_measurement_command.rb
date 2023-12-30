# frozen_string_literal: true

module Types
  include Dry.Types()
end

class EditMeasurementCommand < Dry::Struct
  include ActiveModel::Validations
  include Aux::Pluggable

  register

  # @!attribute [rw] id
  #   @return [Integer]
  # @!attribute [rw] measured_at
  #   @return [DateTime]
  # @!attribute [rw] value
  #   @return [Integer]
  attribute :id, Types::Integer
  attribute :measured_at, Types::DateTime
  attribute :value, Types::Integer

  validates :id, presence: true
end
