class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :product_id
      t.decimal :price
      t.integer :quantity
      t.datetime :ship_date
      t.timestamps
    end
  end
end
