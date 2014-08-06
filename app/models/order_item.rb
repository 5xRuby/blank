class OrderItem < ActiveRecord::Base
  belongs_to :order

  def self.create_from! line_item
    create! product_name: line_item.product.name,
            product_price: line_item.product.price,
            volume: line_item.volume
  end

  def subtotal
    product_price * volume
  end
end
