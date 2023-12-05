# frozen_string_literal: true

class ApplicationController
  module AuthMethods
    private

    def authenticate
      command = authentication_command.new authentication_params_from_headers
      authenticate_with_token command

      return render status: :forbidden if @current_user.nil?
    end

    def authentication_params_from_headers
      return {} if request.authorization.blank?

      { token: request.authorization.gsub(/\A(Token|Bearer) token=(.*?)\z/, '\2') }
    end

    # @param command [Hash]
    def authenticate_with_token(command)
      session = sessions_repository.find_by(id: command.token)
      return unless session

      user = users_repository.find_by(id: session.user_id)
      @current_user = user if user
    end

    # @param command [AuthenticationCommand]
    def authenticate_with_password(command)
      user = users_repository.find_by(email: command.email)
      @current_user = user if user&.authenticate(command.password)
    end

    # @return [Rack::Request]
    def authentication_params = params.permit(:email, :password)
  end
end
