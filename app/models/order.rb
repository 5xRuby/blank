class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items

  def self.create_for! cart
    ActiveRecord::Base.transaction do # 只要出差錯就回溯資料庫
      order = Order.create! user: cart.user
      cart.line_items.includes(:product).each do |line_item|
        line_item.product.lock!.decrement(:volume, line_item.volume).save!
        order.order_items << OrderItem.create_from!(line_item)
      end
      order
    end
  end

  def total
    order_items.to_a.sum(&:subtotal)
  end
end
