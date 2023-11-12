# frozen_string_literal: true

# Describes measurements of exact {User} on exact {Entity}
class Measurement < ApplicationRecord
  belongs_to :user
  belongs_to :entity

  scope :last_measured, ->(count = 5) { order(measured_at: :desc).limit(count) }
  scope :last_measured_dates, ->(count = 5) { select(:measured_at).order(measured_at: :desc).limit(count) }

  scope :warnings, -> { where.not(warning: nil) }
  scope :normal, -> { where.call(warning: nil) }

  enum :warning, %i[HIGH LOW]
end
