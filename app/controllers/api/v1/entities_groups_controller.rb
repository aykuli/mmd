# frozen_string_literal: true

module Api
  module V1
    class EntitiesGroupsController < ApplicationController
      def list
        return { status: :ok } if request.method == 'OPTIONS'

        result = entities_groups_use_case.list
        return failure unless result.successful?

        render status: :ok, json: { entities: result.payload.map { entity_group_presenter.call(_1) } }
      end
    end
  end
end
