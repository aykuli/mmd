# frozen_string_literal: true

class MeasurementsRepository
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!method find_by(attributes)
  #   @param attributes [Hash]
  #   @return [Measurement, nil]
  #   # @!method create(attributes)
  #   #   @param attributes [Hash]
  #   #   @return [Measurement, nil]
  delegate :where, :create, to: :model

  private

  # @return [Class<Measurement>]
  def model = Measurement
end
