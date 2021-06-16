class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.string :item_name
      t.integer :item_price
      t.integer :quantity

      t.timestamps
    end
  end
end
