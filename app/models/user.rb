# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :user, foreign_key: :parent_id, optional: true

  has_many :entities, class_name: 'EntityUserRelation'

  has_secure_password
end
