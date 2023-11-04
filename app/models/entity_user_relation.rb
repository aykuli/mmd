# frozen_string_literal: true

# Describes {Entity}, created by {User}, and {User} relation
class EntityUserRelation < ApplicationRecord
  self.table_name = 'entities_users'

  belongs_to :user
  belongs_to :entity
end
