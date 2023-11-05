# frozen_string_literal: true

# Describes {User} in system
class User < ApplicationRecord
  has_secure_password

  before_save { self.email = email.downcase }

  belongs_to :user, foreign_key: :parent_id, optional: true, inverse_of: :user
  has_many :entities, class_name: 'EntityUserRelation', dependent: :restrict_with_exception
  has_many :children, class_name: 'ParentChildren', foreign_key: :parent_id, inverse_of: :user, dependent: :restrict_with_exception
  has_many :sessions, dependent: :destroy, inverse_of: :user
  validates :first_name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :email, presence: true, if: -> { parent_id.nil? }
  validate :email_correct?, on: :create

  validates :gender, presence: true

  private

  def email_correct?
    return false unless parent_id.nil?
    return false if URI::MailTo::EMAIL_REGEXP.match?(email)

    errors.add(:email, :invalid)
  end
end
