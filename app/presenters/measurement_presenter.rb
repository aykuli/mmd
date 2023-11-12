# frozen_string_literal: true

# Describes presentation rules for measurements
class MeasurementPresenter < ApplicationController
  include Aux::Pluggable

  register

  # @param measurement [Measurement]
  # @return [Hash]
  def self.call(measurement)
    {
      id: measurement.id,
      measured_at: measurement.measured_at,
      value: measurement.value,
      warning: measurement.warning,
      max: measurement.entity.max,
      min: measurement.entity.min,
      unit: measurement.entity.unit,
      description: measurement.entity.description,
      gender: measurement.entity.gender
    }
  end
end
