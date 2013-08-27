json.array!(@counteroffers) do |counteroffer|
  json.extract! counteroffer, :offer_id, :buyer, :seller, :buyer_price, :seller_price
  json.url counteroffer_url(counteroffer, format: :json)
end
