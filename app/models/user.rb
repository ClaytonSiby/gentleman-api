class User < ApplicationRecord
  has_secure_password
  has_many :suits

  validates :username, :email, :password, presence: true
  validates :password, length: { minimum: 7 }
end
