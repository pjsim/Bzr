json.array!(@products) do |product|
  json.extract! product, :name, :price, :sold, :user_id
  json.url product_url(product, format: :json)
end
