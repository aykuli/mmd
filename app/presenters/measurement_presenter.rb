# frozen_string_literal: true

# Describes presentation rules for measurements
class MeasurementPresenter < ApplicationController
  def self.call(measurement, entity)
    {
      id: measurement.id,
      measured_at: measurement.measured_at,
      value: measurement.value,
      warning: measurement.warning,
      max: entity.max,
      min: entity.min,
      unit: entity.unit,
      description: entity.description,
      gender: entity.gender
    }
  end
end
