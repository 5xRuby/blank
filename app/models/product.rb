class Product < ActiveRecord::Base
  validates :name, :price, presence: true
  validates :price, numericality: { greater_than: 100, less_than: 10000 }
  validates :volume, numericality: { greater_than_or_equal_to: 0 }
  validates :name, confirmation: true

  belongs_to :category
  has_many :line_items

  mount_uploader :image, ImageUploader
end
