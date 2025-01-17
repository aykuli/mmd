# frozen_string_literal: true

module Api
  module V1
    class AuthenticationController < ApplicationController
      skip_before_action :authenticate, only: :login

      def login
        return { status: :ok } if request.method == 'OPTIONS'

        command = authentication_command.new authentication_params
        authenticate_with_password command
        return render status: :unauthorized, json: { success: false } if @current_user.nil?

        result = sessions_use_case.create current_user
        return failure unless result.successful?

        render json: { token: result.payload.id, user: user_presenter.call(current_user) }
      end

      def logout
        return { status: :ok } if request.method == 'OPTIONS'

        result = sessions_use_case.destroy current_user
        return failure unless result.successful?

        render json: { success: true }
      end
    end
  end
end
