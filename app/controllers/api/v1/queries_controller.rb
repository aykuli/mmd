# frozen_string_literal: true

module Api
  module V1
    class QueriesController < ApplicationController
      def entities_list
        entities = Entity.all
        render status: 200, json: {entities: entities.map { { id: _1.id, code: _1.code, title: _1.title } } }
      end

      def list
        entity=params[:entity]
        byebug
      end
    end
  end
end
