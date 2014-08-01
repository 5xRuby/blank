class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items

  def total
    line_items.to_a.sum(&:subtotal)
  end
end
