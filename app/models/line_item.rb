class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product

  def subtotal
    product.price * volume
  end
end
