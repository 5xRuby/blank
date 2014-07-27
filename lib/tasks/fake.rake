namespace :fake do
  desc '創造 100 個假產品資料'
  task products: :environment do
    100.times do |i|
      Product.create name: "產品 #{i}",
        name_confirmation: "產品 #{i}",
        description: "敘述 #{i}",
        price: rand(100)*100,
        volume: rand(10000)
    end
  end

  desc '創造 10 個假分類'
  task categories: :environment do
    10.times do |i|
      Category.create name: "分類 #{i}"
    end
  end
end
