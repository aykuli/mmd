# frozen_string_literal: true

# Describes measurements of exact {User} on exact {Entity}
class Measurement < ApplicationRecord
  belongs_to :user
  belongs_to :entity
end
