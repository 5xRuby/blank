class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order, index: true
      t.string :product_name
      t.integer :product_price
      t.integer :volume

      t.timestamps
    end
  end
end
