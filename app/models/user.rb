class User < ApplicationRecord
  belongs_to :user, foreign_key: :parent_id, optional: true
  
  has_secure_password
end
