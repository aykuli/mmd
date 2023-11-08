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

  has_many :parents_children, foreign_key: :parent_id, dependent: :destroy
  has_many :relatives, through: :parents_children, source: :child, foreign_key: :parent_id

  has_many :entities, class_name: 'EntityUserRelation', dependent: :restrict_with_exception
  has_many :sessions, dependent: :destroy, inverse_of: :user

  def parent = User.find_by(id: parent_id)

  private

  def email_correct?
    return false unless parent_id.nil?
    return false if URI::MailTo::EMAIL_REGEXP.match?(email)

    errors.add(:email, :invalid)
  end
end
