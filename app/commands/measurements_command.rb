# frozen_string_literal: true

module Types
  include Dry.Types()
end

class MeasurementsCommand < Dry::Struct
  include ActiveModel::Validations
  include Aux::Pluggable

  register

  # @!attribute [rw] user_id
  #   @return [Integer]
  attribute :user_id, Types::Integer

  validates :user_id, presence: true
end
