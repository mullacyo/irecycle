class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  enum roles: [:user, :truck, :admin]
end
