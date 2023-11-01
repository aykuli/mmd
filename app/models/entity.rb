# frozen_string_literal: true

class Entity < ApplicationRecord
  has_many :users, class_name: 'EntityUserRelation'
end
