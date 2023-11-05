# frozen_string_literal: true

module Api
  module V1
    class UsersController
      def create
        permitted_params = user_params

        user = User.new permitted_params.except(:parent_id)
        if user.save
          ParentUserRelation.new user_id: user.id, parent_id: permitted_params[:parent_id] if permitted_params[:parent_id]

          render status: :created, json: { message: 'User successfully created!\nCheck email to confirm!' }
        else
          render status: :unprocessable_entity, json: { message: 'Try again!' }
        end
      end

      private

      def user_params
        params.require(:user).permit :email, :password, :first_name, :last_name, :gender, :member, :parent_id
      end
    end
  end
end
