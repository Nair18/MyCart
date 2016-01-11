class Cart < ActiveRecord::Base
	 has_many :products


  def add_product(item_id)
    product = products.find_or_create_by_product_id(:product_id)
    product.quantity += 1
    product.save
  end
end


