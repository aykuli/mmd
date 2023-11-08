# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def family
        byebug
        result = FilterFamilyUseCase.new.call(nil, nil)
        byebug
        render status: :ok, json: { users: result.payload.map { user_presenter.call(_1) } }
      end

      private

      # @return [<UserPresenter>]
      def user_presenter = UserPresenter
    end
  end
end
