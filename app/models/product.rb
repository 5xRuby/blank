class Product < ActiveRecord::Base
  validates :name, :name_confirmation, :price, presence: true
  validates :price, numericality: {greater_than: 100, less_than: 10000}
  validates :name, confirmation: true
end
