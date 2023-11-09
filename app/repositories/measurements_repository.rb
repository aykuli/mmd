# frozen_string_literal: true

class MeasurementsRepository
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!method where(attributes)
  #   @param attributes [Hash]
  #   @return [ActiveRecord::Relation<User>]
  # @!method find_by(attributes)
  #   @param attributes [Hash]
  #   @return [User, nil]
  # @!method find(id)
  #   @param id [Integer]
  #   @raise [ActiveRecord::RecordNotFound]
  #   @return [User]
  # @!method create!(attributes)
  #   @param attributes [Hash]
  #   @return [User]
  delegate :where, :find_by, :find, :create!, to: :model

  private

  # @return [Class<User>]
  def model = Measurement
end
