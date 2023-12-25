# frozen_string_literal: true

class MeasurementCollectionPresenter < ApplicationController
  include Aux::Pluggable

  register

  class << self
    # @param collection [Array<Measurement>]
    # @return [Hash]
    def call(collection)
      hash_by_date = {}
      collection.find_each do |measurement|
        measured_date = measurement.measured_at
        if hash_by_date[measured_date].nil?
          hash_by_date[measured_date] = [build(measurement)]
        else
          hash_by_date[measured_date] << build(measurement)
        end
      end
      hash_by_date.sort.reverse!.to_h
    end

    private

    # @param measurement [Measurement]
    # @return [Hash]
    def build(measurement)
      {
        id: measurement.id,
        user_id: measurement.user_id,
        measured_at: measurement.measured_at,
        value: measurement.value,
        warning: measurement.warning
      }.merge(build_entity_fields(measurement)).merge(build_group_fields(measurement))
    end

    # @param measurement [Measurement]
    # @return [Hash]
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

    # @param measurement [Measurement]
    # @return [Hash]
    def build_group_fields(measurement)
      {
        group_title: measurement.group&.title,
        group_code: measurement.group&.code,
        group_precedence: measurement.group&.precedence
      }
    end
  end
end
