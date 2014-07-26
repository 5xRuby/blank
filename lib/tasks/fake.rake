namespace :fake do
  desc '創造 100 個假產品資料'
  task products: :environment do
    100.times do |i|
      Product.create name: "產品 #{i}", description: "敘述 #{i}", price: rand(100)*100, volume: rand(10000)
    end
  end
end
