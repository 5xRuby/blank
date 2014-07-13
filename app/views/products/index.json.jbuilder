json.array!(@products) do |product|
  json.extract! product, :id, :Productname, :Pnumber, :picture
  json.url product_url(product, format: :json)
end
