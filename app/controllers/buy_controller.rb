class BuyController < ApplicationController
  def index
  	if user_signed_in?
  		@products = Product.where.not(user: current_user)
  	else
  		@products = Product.all
  	end
  end
end
