class ProductsController < ApplicationController
	
	def show 
		@product = Product.find(params[:id])
		
	end

	def create
    @item = Item.find(params[:item_id])
   
  end

end
