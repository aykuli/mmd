# frozen_string_literal: true

# Describes {User} in system
class User < ApplicationRecord
  belongs_to :user, foreign_key: :parent_id, optional: true, inverse_of: :user

  has_many :entities, class_name: 'EntityUserRelation', dependent: :restrict_with_exception

  has_secure_password
end
