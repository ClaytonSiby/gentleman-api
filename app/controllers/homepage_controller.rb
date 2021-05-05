class HomepageController < ApplicationController
  def index
    render json: 'Hey, enjoy the gentleman api, please view the documentation for guidance!'
  end
end
