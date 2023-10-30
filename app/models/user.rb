class User < ApplicationRecord
  belongs_to :parent, class_name: 'User', optional: true

  has_secure_password
end
