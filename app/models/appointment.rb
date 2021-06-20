class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :suit
  validates_uniqueness_of :suit, scope: :user_id,
                                 message: 'You already created an appointment on this suit!'
end
