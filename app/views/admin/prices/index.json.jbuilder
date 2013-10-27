json.array!(@prices) do |price|
  json.extract! price, :value
  json.url price_url(price, format: :json)
end
