json.array!(@products) do |product|
  json.extract! product, :name, :category_id, :price_id
  json.url product_url(product, format: :json)
end
