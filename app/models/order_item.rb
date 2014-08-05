class OrderItem < ActiveRecord::Base
  belongs_to :order

  def subtotal
    product_price * volume
  end
end
