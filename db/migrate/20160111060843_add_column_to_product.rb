class AddColumnToProduct < ActiveRecord::Migration
   def change
    change_table :products do |t|
      t.integer :supplier_id
    end
   end

 
end
