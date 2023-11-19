# frozen_string_literal: true

module Api
  module V1
    class MeasurementsController < ApplicationController
      # TODO: pagination
      def warnings
        return { status: :ok } if request.method == 'OPTIONS'

        warnings_command = command.new(permitted_params(command))

        result = use_case.warnings(warnings_command)

        render json: { warnings: result.payload.map { presenter.call _1 } }
      end

      def dates
        return { status: :ok } if request.method == 'OPTIONS'

        dates_command = command.new(permitted_params(command))
        result = use_case.dates(dates_command)

        render json: { dates: result.payload.map { presenter.call _1 } }
      end

      private

      def permitted_params(command) = params.permit(command.schema.keys.map(&:name))

      def command = ioc.resolve('measurements_command')

      # @return [MeasurementsUseCase]
      def use_case = ioc.resolve('measurements_use_case')

      def presenter = ioc.resolve('measurement_presenter')

      def ioc = Rails.configuration.ioc
    end
  end
end
