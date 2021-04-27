class SuitsController < ApplicationController
  before_action :set_suit, only: %i[show update destroy]

  def index
    @suits = current_user.suits
    json_response(@suits)
  end

  def create
    @suit = current_user.suits.create!(suit_params)
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
    params.permit(:name, :suit_type, :color, :size, :price, :description, :imageUrl)
  end

  def set_suit
    @suit = Suit.find(params[:id])
  end
end
