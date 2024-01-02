class ObserverUserRelation < ApplicationRecord
  self.table_name = :observers_users

  belongs_to :user, class_name: 'User'
  belongs_to :observer, class_name: 'User'
end