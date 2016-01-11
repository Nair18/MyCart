class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
    	
    	t.string :name
    	t.decimal :price
    	t.integer :product_id


      t.timestamps
    end
  end
end
