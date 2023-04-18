class MerchandisersController < ApplicationController
  def index
    merchandisers = Merchandiser.all
    render json: merchandisers
  end
end
