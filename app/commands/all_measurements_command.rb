# frozen_string_literal: true

module Types
  include Dry.Types()
end

class AllMeasurementsCommand < Dry::Struct
  include ActiveModel::Validations
  include Aux::Pluggable

  register

  # @!attribute [rw] grouped_by
  #   @return [String]
  # @!attribute [rw] user_id
  #   @return [Integer]
  attribute :grouped_by, Types::String
  attribute :user_id, Types::Integer

  validates :grouped_by, :user_id, presence: true
end
