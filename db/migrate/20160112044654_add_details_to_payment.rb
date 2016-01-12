class AddDetailsToPayment < ActiveRecord::Migration
  def change
  	add_column :payments, :user_name, :string
    add_column :payments, :email, :string
    add_column :payments, :phone, :integer
    add_column :payments, :address, :text
    add_column :payments, :city, :string
    add_column :payments, :state, :string
    add_column :payments, :country, :string
    add_column :payments, :card_no, :integer
    add_column :payments, :cvc, :integer
    add_column :payments, :user_id, :integer
    add_column :payments, :order_id, :integer
  end
end
