# frozen_string_literal: true

# Entity} might be created by User, or system default, that is available for all users
class Entity < ApplicationRecord
  has_many :users, class_name: 'EntityUserRelation', dependent: :destroy
end
