# frozen_string_literal: true

module Types
  include Dry.Types()
end

class FilterMeasurementsCommand < Dry::Struct
  include ActiveModel::Validations
  include Aux::Pluggable

  register

  # @!attribute [rw] user_id
  #   @return [Integer]
  attribute :user_id, Types::Integer

  # @!attribute [rw] created_at
  #   @return [DateTime]
  attribute :created_at, Types::DateTime

  validates :user_id, presence: true
end
