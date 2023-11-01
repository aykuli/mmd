# frozen_string_literal: true

class EntityUserRelation < ApplicationRecord
  self.table_name = 'entities_users'

  belongs_to :user
  belongs_to :entity
end
