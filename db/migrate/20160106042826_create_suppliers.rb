class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
    	t.string :company_name
    	t.string :contact_fname
    	t.string :contact_lname
    	t.text :address_1
    	t.text :address_2
    	t.string :city
    	t.string :state
    	t.string :country
    	t.integer :phone_no
    	t.string :email

      t.timestamps
    end
  end
end
