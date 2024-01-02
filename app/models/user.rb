# frozen_string_literal: true

# Describes {User} in system
class User < ApplicationRecord
  include ActiveRecord::QueryMethods

  has_secure_password

  before_save { self.email = email.downcase if email }
  validates :first_name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :gender, presence: true

  has_many :entities, class_name: 'EntityUserRelation', dependent: :restrict_with_exception
  has_many :measurements, dependent: :restrict_with_exception

  has_many :sessions, dependent: :destroy

  has_many :observers_user_relations, class_name: 'ObserverUserRelation'
  has_many :observers, through: :observers_user_relations
  has_many :visible_users,class_name: 'ObserverUserRelation', as: :user

end
