json.array!(@offers) do |offer|
  json.extract! offer, :product_id, :buyer, :seller, :buyer_price, :seller_price
  json.url offer_url(offer, format: :json)
end
