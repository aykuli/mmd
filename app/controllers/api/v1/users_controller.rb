# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def family
        result = users_use_case.family(nil, current_user)
        render status: :ok, json: { users: result.payload.map { user_presenter.call(_1) } }
      end

      def add
        return { status: :ok } if request.method == 'OPTIONS'

        command = add_user_command.new permitted_params(add_user_command)
        result = users_use_case.add command
        return failure unless result.successful?

        render json: user_presenter.call(result.payload)
      end
    end
  end
end
