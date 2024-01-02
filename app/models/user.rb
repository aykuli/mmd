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

  has_many :observers_user_relations, class_name: 'ObserverUserRelation', foreign_key: :observer_id, dependent: :restrict_with_exception,
                                      inverse_of: :user_observer_relations
  has_many :user_observer_relations, class_name: 'ObserverUserRelation', dependent: :restrict_with_exception
  has_many :visible_users, through: :observers_user_relations, source: :user
  has_many :observers, through: :user_observer_relations, source: :observer
end
