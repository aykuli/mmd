# frozen_string_literal: true

module Api
  module V1
    # Describes rules of querying existing data
    class QueriesController < ApplicationController
      def entities_list
        entities = Entity.all
        render status: :ok, json: { entities: entities.map { { id: _1.id, code: _1.code, title: _1.title } } }
      end

      def list
        entity_code = params[:entity]
        entity = Entity.find_by(code: entity_code, gender: :female)
        measurements = Measurement.where(entity_id: entity.id)

        render status: :ok, json: { measurements: measurements.map do
                                                    {
                                                      id: _1.id,
                                                      measured_at: _1.measured_at,
                                                      value: _1.value,
                                                      warning: _1.warning,
                                                      max: entity.max,
                                                      min: entity.min,
                                                      unit: entity.unit,
                                                      description: entity.description,
                                                      gender: entity.gender
                                                    }
                                                  end }
      end
    end
  end
end
