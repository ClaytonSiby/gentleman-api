class SuitsController < ApplicationController
    before_action :set_suit, only: %i[show update destroy]

    def index
      @suits = Suit.all
      json_response(@suits)
    end

    def create
      @suit = Suit.create!(suit_params)
      json_response(@suit)
    end

    def show
      json_response(@suit)
    end

    def update
      @suit.update(suit_params)
      head :no_content
    end

    def destroy
      @suit.destroy
      head :no_content
    end

    private

    def suit_params
      params.permit(:name, :type, :color, :price, :description, :imageUrl)
    end

    def set_suit
      @suit = Suit.find(params[:id])
    end
end
