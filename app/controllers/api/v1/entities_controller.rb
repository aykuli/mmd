# frozen_string_literal: true

module Api
  module V1
    class EntitiesController < ApplicationController
      def filter
        return { status: :ok } if request.method == 'OPTIONS'

        carried_res = entities_use_case.filter(filter_entities_command.new(allowed_params), User.find(1))

        render status: :ok, json: { entities: carried_res.map { entity_presenter.call(_1) } }
      end

      def list
        return { status: :ok } if request.method == 'OPTIONS'

        entity_code = params[:entity]
        entity = entities_repository.find_by(code: entity_code, gender: :female)
        return failure unless entity

        measurements = measurements_repository.where(entity_id: entity.id)
        render status: :ok, json: { measurements: measurements.map { measurement_presenter.call(_1) } }
      end

      private

      def allowed_params = filter_entities_command.schema.keys.map(&:name)
    end
  end
end
