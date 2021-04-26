class Suit < ApplicationRecord
  has_many :appointments
  validates :name, :suit_type, :color, :price, :description, :imageUrl, presence: true
end
