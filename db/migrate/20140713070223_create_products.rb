class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Productname
      t.string :Pnumber
      t.string :picture

      t.timestamps
    end
  end
end
