class MyOffersController < ApplicationController
  def index
  	@my_products = Product.where(user: current_user)
  	@received_offers = Offer.where(seller: current_user.email)
  	@given_offers = Offer.where(buyer: current_user.email)
  	@received_counteroffers = Counteroffer.where(buyer: current_user.email)
  	@given_counteroffers = Counteroffer.where(seller: current_user.email)
  end

  def accept
    @offer = Offer.find(params[:my_offer_id])
    @offer.product.sold = true
    @offer.product.save
  	#When offer is accepted
  	#the offerer is notified
  	#the product has sold set to true
  	#the offer/counteroffer is deleted
    redirect_to my_offers_path
  end

  def decline
  	#When offer is declined
  	#the offerer is notified
  	#the offer/counteroffer is deleted
  end

  def counteroffer
  	#When offer is counteroffered
  	#offerer is notified
  end
end
