class Suit < ApplicationRecord
  has_many :appointments
  belongs_to :user
  validates :name, :suit_type, :color, :price, :description, :imageUrl, presence: true
end
