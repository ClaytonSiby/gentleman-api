class Suit < ApplicationRecord
  belongs_to :user
  has_many :appointments
  validates :name, :suit_type, :color, :price, :description, :imageUrl, presence: true
end
