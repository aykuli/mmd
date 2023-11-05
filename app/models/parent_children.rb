# frozen_string_literal: true

class ParentChildren < ApplicationRecord
  belongs_to :user, foreign_key: :parent_id, inverse_of: :parent_children
end
