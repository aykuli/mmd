# frozen_string_literal: true

class EntityGroup < ApplicationRecord
  has_many :entities, dependent: :restrict_with_exception
end
