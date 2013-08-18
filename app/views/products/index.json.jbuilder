json.array!(@products) do |product|
  json.extract! product, :name, :price, :sold
  json.url product_url(product, format: :json)
end
