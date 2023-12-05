# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def family
        result = filter_family_use_case.call(nil, nil)
        render status: :ok, json: { users: result.payload.map { users_presenter.call(_1) } }
      end
    end
  end
end
