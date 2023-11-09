# frozen_string_literal: true

class MeasurementsRepository
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!method find_by(attributes)
  #   @param attributes [Hash]
  #   @return [Measurement, nil]
  # @!method find(id)
  #   @param id [Integer]
  #   @raise [ActiveRecord::RecordNotFound]
  #   @return [Measurement]
  # @!method create!(attributes)
  #   @param attributes [Hash]
  #   @return [Measurement]
  delegate :where, :find_by, :find, :create!, to: :model

  # @param criteria [Hash]
  # @return [ActiveRecord::Relation<Measurement>]
  def filter(criteria = {}) = model.where(**criteria)

  private

  # @return [Class<Measurement>]
  def model = Measurement
end
