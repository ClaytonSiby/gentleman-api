require 'rails_helper'

RSpec.describe Appointment, type: :model do
  # associations test.
  it { should belong_to :suit }
end
