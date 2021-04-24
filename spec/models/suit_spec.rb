require 'rails_helper'

RSpec.describe Suit, type: :model do
  # associations tests
  it { should have_many :appointments }

  # validations tests
  it { should validate_presence_of :name }
  it { should validate_presence_of :type }
  it { should validate_presence_of :color }
  it { should validate_presence_of :price }
  it { should validate_presence_of :description }
  it { should validate_presence_of :imageUrl }
end
