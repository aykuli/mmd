# frozen_string_literal: true

module Api
  module V1
    class EntitiesController < ApplicationController
      def filter
        return { status: :ok } if request.method == 'OPTIONS'

        command = filter_entities_command.new permitted_params(filter_entities_command)
        result = entities_use_case.filter command
        return failure unless result.successful?

        render status: :ok, json: { entities: result.payload.map { entity_presenter.call(_1) } }
      end

      def add
        return { status: :ok } if request.method == 'OPTIONS'

        command = add_entity_command.new permitted_params(add_entity_command)
        result = entities_use_case.add command
        return failure unless result.successful?

        render status: :ok, json: { entities: entity_presenter.call(result.payload) }
      end
    end
  end
end
