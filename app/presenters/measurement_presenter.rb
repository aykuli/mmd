# frozen_string_literal: true

# Describes presentation rules for measurements
class MeasurementPresenter < ApplicationController
  include Aux::Pluggable

  register

  class << self
    # @param measurement [Measurement]
    # @return [Hash]
    def call(measurement)
      {
        id: measurement.id,
        user_id: measurement.user_id,
        measured_at: measurement.measured_at,
        value: measurement.value,
        warning: measurement.warning
      }.merge(build_entity_fields(measurement))
    end

    def build_entity_fields(measurement)
      {
        max: measurement.entity.max,
        min: measurement.entity.min,
        unit: measurement.entity.unit,
        description: measurement.entity.description,
        gender: measurement.entity.gender,
        entity_title: measurement.entity.title,
        entity_code: measurement.entity.code
      }
    end
  end
end
