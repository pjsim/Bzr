class BuyController < ApplicationController
  def index
  	@products = Product.where.not(user: current_user)
  end
end
