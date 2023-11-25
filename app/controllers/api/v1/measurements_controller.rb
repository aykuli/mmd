# frozen_string_literal: true

module Api
  module V1
    class MeasurementsController < ApplicationController
      # TODO: pagination
      def query
        return { status: :ok } if request.method == 'OPTIONS'

        action = params[:query]
        action_command = command.new permitted_params(command)
        result = use_case.send action, action_command

        return failure unless result.successful?

        render json: result.payload.map { presenter.call _1 }
      end

      def entity
        return { status: :ok } if request.method == 'OPTIONS'

        action_command = command.new permitted_params(command)
        result = use_case.entity action_command

        return failure unless result.successful?

        render json: result.payload.map { presenter.call _1 }
      end

      private

      # @return [ActionController::Parameters]
      def permitted_params(command) = params.permit(command.schema.keys.map(&:name))

      # @return [MeasurementsCommand]
      def command = ioc.resolve('measurements_command')

      # @return [MeasurementsUseCase]
      def use_case = ioc.resolve('measurements_use_case')

      # @return [MeasurementPresenter]
      def presenter = ioc.resolve('measurement_presenter')

      # @return [Dry::Container]
      def ioc = Rails.configuration.ioc

      def failure
        render status: :unprocessable_entity
      end
    end
  end
end