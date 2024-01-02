# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def list
        return { status: :ok } if request.method == 'OPTIONS'

        result = users_use_case.list(current_user)
        render status: :ok, json: { users: result.payload.map { user_presenter.call(_1) } }
      end

      def add
        return { status: :ok } if request.method == 'OPTIONS'
        return failure unless current_user.admin?

        command = add_user_command.new permitted_params(add_user_command)
        result = users_use_case.add command, current_user
        return failure unless result.successful?

        render json: user_presenter.call(result.payload)
      end
    end
  end
end
