class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :name
    	t.decimal :price
    	t.text :description
    	t.references :Item

      t.timestamps
    end
  end
end
