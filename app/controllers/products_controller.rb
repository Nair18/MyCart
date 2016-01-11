class ProductsController < ApplicationController
	def index
		@item = Item.find(params[:id])
	  @products = @item.products.all
  
	end
	def show 
		@product = Product.find(params[:id])
		
	end

	def create
    @item = Item.find(params[:item_id])
    @product = Product.create!(:cart => current_cart, :item => @item, :quantity => 1)
    redirect_to cart_path(current_cart.id)
  end

end
