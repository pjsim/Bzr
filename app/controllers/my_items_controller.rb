class MyItemsController < ApplicationController
  def index
  	@my_items = Product.where(user: current_user)
  end
end
