# frozen_string_literal: true

module Api
  module V1
    class MeasurementsController < ApplicationController
      # TODO: pagination
      def filter
        result = use_case.call(command.new(params), User.find(1))

        render status: :ok, json: { measurements: result.payload.map { presenter.call(_1) } }
      end

      def dates
        result = use_case.call(command.new(allowed_params), User.find(1))

        render json: { dates: result.payload.map { { id: _1.id, created_at: _1.created_at } } }
      end

      private

      def allowed_params = params.except(:controller, :action, :measurement).permit!

      def command = ioc.resolve('filter_measurements_command')
      def use_case = ioc.resolve('filter_measurements_use_case')
      def presenter = ioc.resolve('measurement_presenter')
      def ioc = Rails.configuration.ioc
    end
  end
end
