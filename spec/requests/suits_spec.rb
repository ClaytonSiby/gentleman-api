require 'rails_helper'

RSpec.describe "Suits", type: :request do
  describe "GET /index" do
    let!(:suits) { create_list(:suit, 10) }
    let(:suit_id) { suits.first.id }

    describe 'GET /api/v1/suits' do
      before { get '/api/v1/suits' }

      it 'returns suits' do
        expect(json).not_to be_empty
        expect(json.size).to eq(10)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    describe 'GET /api/v1/suits/:id' do
      before { get "/api/v1/suits/#{suit_id}"}

      context 'when the record exists' do
        it 'returns the suit' do
          expect(json).not_to be_empty
          expect(json['id']).to eq(suit_id)
        end

        it 'returns status code 200' do
          expect(response).to have_http_status(200)
        end
      end

      context 'when record does not exist' do
        let(:suit_id) { 100 }

        it 'returns status code 404' do
          expect(response).to have_http_status(404)
        end

        it 'returns a not found message' do
          expect(response.body).to match(/Couldn't find Suit/)
        end
      end
    end

    describe 'POST /api/v1/suits' do
      let(:valid_attributes) { { name: 'Taxido',
                                 type: 'Slim Fit',
                                 color: 'black',
                                 price: 123.45,
                                 description: Faker::Lorem.paragraph,
                                 imageUrl: 'https://service.unsplash.com/?suit,black'
                                }}


      context 'when the request is valid' do
        before { post '/api/v1/suits', params: valid_attributes }

        it 'creates a new suit' do
          expect(json['name']).to eq('Taxido')
        end

        it 'returns status code 422' do
          expect(response).to have_http_status(201)
        end
      end

      context 'when the request is invalid' do
        before { post '/api/v1/suits ', params: { name: 'Taxido' } }

        it 'returns status code 422' do
          expect(response).to have_http_status(422)
        end
      end
    end

    describe 'PUT /api/v1/suits/:id' do
      let(:valid_attributes) { { name: 'Peak Lapel' } }

      context 'when the record exists' do
        before { put "/api/v1/suits/#{suit_id}", params: valid_attributes }

        it 'updates the record' do
          expect(response.body).to be_empty
        end

        it 'returns status code 204' do
          expect(response.status).to have_http_status(204)
        end
      end
    end

    describe 'DLETE /api/v1/suits/:id' do
      before { delete "/api/v1/suits/#{suit_id}" }

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end
end
