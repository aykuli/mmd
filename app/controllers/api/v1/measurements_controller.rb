# frozen_string_literal: true

module Api
  module V1
    class MeasurementsController < ApplicationController
      # TODO: pagination
      def query
        return { status: :ok } if request.method == 'OPTIONS'

        action = params[:query]
        command = measurements_command.new permitted_params(measurements_command)
        result = measurements_use_case.send action, command
        return failure unless result.successful?

        render json: result.payload.map { measurement_presenter.call _1 }
      end

      def entity
        return { status: :ok } if request.method == 'OPTIONS'

        command = measurements_command.new permitted_params(measurements_command)
        result = measurements_use_case.entity command
        return failure unless result.successful?

        render json: result.payload.map { measurement_presenter.call _1 }
      end

      def all
        return { status: :ok } if request.method == 'OPTIONS'

        command = measurements_command.new permitted_params(measurements_command)
        result = measurements_use_case.all command
        return failure unless result.successful?

        render json: measurement_collection_presenter.call(result.payload)
      end

      def add
        return { status: :ok } if request.method == 'OPTIONS'

        command = add_measurement_command.new permitted_params(add_measurement_command)
        result = measurements_use_case.add command
        return failure unless result.successful?

        render json: measurement_presenter.call(result.payload)
      end

      def edit
        return { status: :ok } if request.method == 'OPTIONS'

        command = edit_measurement_command.new permitted_params(edit_measurement_command)
        result = measurements_use_case.edit command
        return failure unless result.successful?

        render json: measurement_presenter.call(result.payload)
      end

      def delete
        return { status: :ok } if request.method == 'OPTIONS'

        command = edit_measurement_command.new permitted_params(edit_measurement_command)
        result = measurements_use_case.delete command
        return failure unless result.successful?

        render json: { success: true }
      end
    end
  end
end
