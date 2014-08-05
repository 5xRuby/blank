class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items

  def self.new_for cart
    order = Order.new user: cart.user
    cart.line_items.includes(:product).each do |line_item|
      order_item = OrderItem.new({
        product_name: line_item.product.name,
        product_price: line_item.product.price,
        volume: line_item.volume
      }) 
      order.order_items << order_item
    end
    order
  end

  def self.create_for cart
    order = new_for cart
    order.create
  end

  def total
    order_items.to_a.sum(&:subtotal)
  end
end
