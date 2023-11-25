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

        render json: result.payload.map { presenter.call _1 }
      end


      def list
        entity_code = params[:entity]
        entity = Entity.find_by code: entity_code, gender: :female
        measurements = Measurement.where entity_id: entity.id

        render status: :ok, json: { measurements: measurements.map { presenter.call _1 } }

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
    end
  end
end
