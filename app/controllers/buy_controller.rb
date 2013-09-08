class BuyController < ApplicationController
  def index
  	@products = Product.all
  	@users = User.all
  end
end
