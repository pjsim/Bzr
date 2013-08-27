class MyOffersController < ApplicationController
  def index
  	@offers = Offer.where(seller: current_user.email)
  end
end
