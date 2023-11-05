# frozen_string_literal: true

class ParentsChildren < ApplicationRecord
  belongs_to :user, foreign_key: :parent_id, inverse_of: :parent_children
end
