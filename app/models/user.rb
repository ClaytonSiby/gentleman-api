class User < ApplicationRecord
  has_secure_password
  has_many :suits
  has_many :appointments

  validates :username, :email, :password, presence: true
  validates :password, length: { minimum: 7 }

  def self.suit_appointments(user)
    appointments = []
    user.appointments.each { |appointment| appointments << appointment.suit_id }
    Suit.where(id: appointments)
  end
end
