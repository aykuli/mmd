# frozen_string_literal: true

class ApplicationController
  module AuthMethods
    private

    def authenticate
      command = authentication_command.new authentication_params
      authenticate_with_token command

      return render status: :forbidden if @current_user.nil?

      true
    end

    def authentication_params
      return {} if request.authorization.blank?

      { token: request.authorization.gsub(/\A(Token|Bearer) token=(.*?)\z/, '\2') }
    end

    def authenticate_with_token(command)
      session = sessions_repository.find_by(id: command.token)
      return unless session

      user = users_repository.find_by(id: session.user_id)
      @current_user = user if user
    end
  end
end
