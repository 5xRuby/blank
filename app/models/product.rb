class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :price, :quantity, numericality: { only_integer: true }
end
