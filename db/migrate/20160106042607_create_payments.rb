class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :payment_id
      t.string :payment_type
      t.string   "user_name"
      t.string   "email"
      t.integer  "phone"
      t.text     "address"
      t.string   "city"
      t.string   "state"
      t.string   "country"
      t.integer  "card_no"
      t.integer  "cvc"
      t.integer  "user_id"
      t.integer  "order_id"
      t.timestamps
    end
  end
end
