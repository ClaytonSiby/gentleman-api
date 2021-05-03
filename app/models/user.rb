class User < ApplicationRecord
  has_secure_password
  has_many :suits
  has_many :appointments

  validates :username, :email, :password, presence: true
  validates :password, length: { minimum: 7 }
end
