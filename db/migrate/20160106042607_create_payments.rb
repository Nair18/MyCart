class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :payment_id
      t.string :payment_type
      t.timestamps
    end
  end
end
