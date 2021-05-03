require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  # Initialize the test data
  let!(:user) { create(:user) }
  let!(:suit) { create(:suit, user: user) }
  let(:valid_params) do
    attributes_for(:appointment, suit_id: suit.id)
  end
  let(:headers) { valid_headers }

  describe 'POST /appointments' do
    before { post '/appointments', params: valid_params.to_json, headers: headers }

    it 'returns a status code of 201' do
      expect(response).to have_http_status(201)
    end
  end
end
