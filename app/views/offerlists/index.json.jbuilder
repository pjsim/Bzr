json.array!(@offerlists) do |offerlist|
  json.extract! offerlist, :buyer, :price, :date, :product_id
  json.url offerlist_url(offerlist, format: :json)
end
