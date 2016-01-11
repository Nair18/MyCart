class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :payment_id
      t.datetime :order_date
      t.datetime :ship_date
      t.datetime :required_date
      t.timestamps
    end
  end
end
