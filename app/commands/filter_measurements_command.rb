# frozen_string_literal: true

class FilterMeasurementsCommand
  include ActiveModel::Validations

  include Aux::Pluggable

  register

  # @!attribute [rw] user_id
  #   @return [Interger]
  attribute :user_id, Interger

  # @!attribute [rw] created_at
  #   @return [DateTime]
  attribute :created_at, DateTime
end
