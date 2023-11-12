# frozen_string_literal: true

module Api
  module V1
    class EntitiesController < ApplicationController
      def filter
        byebug
        carried_res = use_case.call(command.new(allowed_params), User.find(1))
        byebug
        Entity.where(gender: %w[female both])
        byebug
        render status: :ok, json: { entities: carried_res.map { { id: _1.id, code: _1.code, title: _1.title } } }
      end

      def list
        entity_code = params[:entity]
        entity = Entity.find_by(code: entity_code, gender: :female)
        measurements = Measurement.where(entity_id: entity.id)

        render status: :ok, json: { measurements: measurements.map { MeasurementPresenter.call(_1, entity) } }
      end

      private

      def allowed_params = command.schema.keys.map(&:name)

      def command = ioc.resolve('filter_entities_command')
      def use_case = ioc.resolve('filter_entities_use_case')
      def presenter = ioc.resolve('entity_presenter')

      def ioc = Rails.configuration.ioc
    end
  end
end
