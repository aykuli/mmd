# frozen_string_literal: true

module Api
  module V1
    class QueriesController < ApplicationController
      def entities_list
        entities = Entity.where(gender: %w[female both])
        render status: :ok, json: { entities: entities.map { { id: _1.id, code: _1.code, title: _1.title } } }
      end

      def list
        entity_code = params[:entity]
        entity = Entity.find_by(code: entity_code, gender: :female)
        measurements = Measurement.where(entity_id: entity.id)

        render status: :ok, json: { measurements: measurements.map { MeasurementPresenter.call(_1, entity) } }
      end
    end
  end
end
