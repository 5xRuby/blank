namespace :fake do
  desc '創造 100 個假產品資料'
  task products: :environment do
    cats = Category.all
    100.times do |i|
      Product.create name: "產品 #{i}",
        name_confirmation: "產品 #{i}",
        description: "敘述 #{i}",
        price: rand(100)*100,
        volume: rand(10000),
        category: cats.sample
    end
  end

  desc '創造 10 個假分類'
  task categories: :environment do
    10.times do |i|
      Category.create name: "分類 #{i}"
    end
  end

  desc '創造假的購物車'
  task carts: :environment do
    products = Product.all
    User.find_each do |user|
      cart = user.cart || user.create_cart
      cart.line_items.create products.sample(10).map{ |product| {product: product, volume: rand(10) + 1} }
    end
  end

  desc '創造假的訂單'
  task orders: :environment do
    products = Product.all
    User.find_each do |user|
      order = user.orders.create
      products.sample(10).each do |product|
        order.order_items.create product_name: product.name, product_price: product.price, volume: rand(10) + 1
      end
    end
  end
end
