class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :price, numericality: { only_integer: false }
  validates :quantity, numericality: { only_integer: true }
end
