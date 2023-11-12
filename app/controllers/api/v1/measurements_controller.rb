# frozen_string_literal: true

module Api
  module V1
    class MeasurementsController < ApplicationController
      # TODO: pagination
      # def filter
      #   result = use_case.call(command.new(permitted_params), User.find(1))
      #   byebug
      #   if result.payload.nil?
      #     render status: :unprocessable_entity, json: {message: 'Oy plohooo'}
      #   end
      #   byebug
      #   render status: :ok, json: { measurements: result.payload.map { presenter.call(_1) } }
      # end

      def dates
        return { status: :ok } if request.method == 'OPTIONS'

        command = dates_command.new(permitted_params(dates_command))
        result = use_case.dates(command, User.find(1))
        byebug
        render json: { dates: result.payload.map { { id: _1.id, measured_at: _1.measured_at } } }
      end

      private

      def permitted_params(command) = params.permit(command.schema.keys.map(&:name))

      def dates_command = ioc.resolve('dates_measurements_command')

      # @return [MeasurementsUseCase]
      def use_case = ioc.resolve('measurements_use_case')

      def presenter = ioc.resolve('measurement_presenter')

      def ioc = Rails.configuration.ioc
    end
  end
end
