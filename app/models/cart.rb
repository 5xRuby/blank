class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items

  def empty?
    line_items.empty?
  end

  def total
    line_items.to_a.sum(&:subtotal)
  end
end
