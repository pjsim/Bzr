class GivenOffersController < ApplicationController
  layout 'template'
  def index
  	@given_offers = Offer.where(buyer: current_user.email)
  	@received_counteroffers = Counteroffer.where(buyer: current_user.email)
  end
end
