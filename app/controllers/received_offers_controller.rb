class ReceivedOffersController < ApplicationController
  def index
  	@my_products = Product.where(user: current_user)
  	@received_offers = Offer.where(seller: current_user.email)
  	@given_counteroffers = Counteroffer.where(seller: current_user.email)
  end
end
