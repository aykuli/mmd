# frozen_string_literal: true

# Describes {User} in system
class User < ApplicationRecord
  include ActiveRecord::QueryMethods

  has_secure_password

  before_save { self.email = email.downcase if email }
  validates :first_name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :email, presence: true, if: -> { parent_id.nil? }
  validate :email_correct?, on: :create
  validates :gender, presence: true

  belongs_to :parent, class_name: 'User'

  has_many :entities, class_name: 'EntityUserRelation', dependent: :restrict_with_exception
  has_many :measurements, dependent: :restrict_with_exception

  has_many :sessions, dependent: :destroy

  private

  def email_correct?
    return false unless parent_id.nil?
    return false if URI::MailTo::EMAIL_REGEXP.match?(email)

    errors.add(:email, :invalid)
  end
end
