# frozen_string_literal: true

module Api
  module V1
    class MeasurementsController
      # TODO: pagination
      def filter
        result = use_case.call(command.new(params), User.find(1))

        render status: :ok, json: { measurements: result.payload.map { presenter.call(_1) } }
      end

      private

      def command = Rails.configuration.ioc.resolve('filter_measurements_command')
      def use_case = Rails.configuration.ioc.resolve('filter_measurements_use_case')
      def presenter = Rails.configuration.ioc.resolve('measurement_presenter')
    end
  end
end
