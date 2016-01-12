class ProductsController < ApplicationController
	
	def show 
		@product = Product.find(params[:id])
		@comments = Comment.where(product_id: @product)
    

	end

	

end
