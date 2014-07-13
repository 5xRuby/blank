# Write fake data to DB
50.times do |i|
  product = Product.new
  product.name = "item-#{i}"
  product.description = "#{i}: item-#{i}"
  product.price = rand(100)
  product.quantity = rand(10)
  product.save
end
