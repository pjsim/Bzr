class Offer < ActiveRecord::Base
  belongs_to :product
  has_one :counteroffer, dependent: :destroy
end
