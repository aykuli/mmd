# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def family
        result = use_case.call(nil, nil)

        render status: :ok, json: { users: result.payload.map { user_presenter.call(_1) } }
      end

      private

      # @return [<UserPresenter>]
      def use_case = Rails.configuration.ioc.resolve('filter_family_use_case')

      # @return [<UserPresenter>]
      def user_presenter = Rails.configuration.ioc.resolve('user_presenter')
    end
  end
end
