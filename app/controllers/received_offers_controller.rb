class ReceivedOffersController < ApplicationController
  def index
  	@my_products = Product.where(user: current_user)




  	@received_offers = Offer.where(seller: current_user.email)
  	@given_counteroffers = Counteroffer.where(seller: current_user.email)

  end

  def accept
  	#@offers = Offer.where(product: product)
  	#@offers.destroy
    @offer = Offer.find(params[:my_offer_id])
    @offer.product.sold = true
    @offer.product.save
    @offer.destroy
  	#When offer is accepted
  	#the offerer is notified
  	#the product has sold set to true
  	#the offer/counteroffer is deleted
    redirect_to my_offers_path #redirect to something else. 
    #like item show with flash
  end

  def decline
  	#When offer is declined
  	#the offerer is notified
  	#the offer/counteroffer is deleted
    @offer = Offer.find(params[:my_offer_id])
    @offer.destroy
  end

  def counteroffer
  	#When offer is counteroffered
  	#offerer is notified
  end
end
