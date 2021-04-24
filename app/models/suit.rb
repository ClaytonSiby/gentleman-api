class Suit < ApplicationRecord
    has_many :appointments
    validates :name, :type, :color, :price, :description, :imageUrl, presence: true
end
