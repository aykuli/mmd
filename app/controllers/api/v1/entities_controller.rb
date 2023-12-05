# frozen_string_literal: true

module Api
  module V1
    class EntitiesController < ApplicationController
      def filter
        carried_res = filter_entities_use_case.call(filter_entities_command.new(allowed_params), User.find(1))

        render status: :ok, json: { entities: carried_res.map { entity_presenter.call(_1) } }
      end

      def list
        entity_code = params[:entity]
        entity = entities_repository.find_by(code: entity_code, gender: :female)
        return failure unless entity

        measurements = measurements_repository.where(entity_id: entity.id)
        render status: :ok, json: { measurements: measurements.map { MeasurementPresenter.call(_1) } }
      end

      private

      def allowed_params = filter_entities_command.schema.keys.map(&:name)
    end
  end
end
