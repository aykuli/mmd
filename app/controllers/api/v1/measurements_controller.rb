# frozen_string_literal: true

module Api
  module V1
    class MeasurementsController < ApplicationController
      # TODO: pagination
      def query
        return { status: :ok } if request.method == 'OPTIONS'

        action = params[:query]
        action_command = measurements_command.new permitted_params(measurements_command)
        result = measurements_use_case.send action, action_command
        return failure unless result.successful?

        render json: result.payload.map { measurement_presenter.call _1 }
      end

      def entity
        return { status: :ok } if request.method == 'OPTIONS'

        action_command = measurements_command.new permitted_params(measurements_command)
        result = measurements_use_case.entity action_command
        return failure unless result.successful?

        render json: result.payload.map { measurement_presenter.call _1 }
      end
    end
  end
end
