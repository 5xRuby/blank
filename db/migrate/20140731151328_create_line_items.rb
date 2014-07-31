class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :cart, index: true
      t.references :product, index: true
      t.integer :volume

      t.timestamps
    end
  end
end
