class ItemsController < ApplicationController
	before_action :authenticate_user!
	def index
		@items = Item.all
	
	end
	
	def show 
		@item = Item.find(params[:id])
		@product = @item.products
		
	end
	
	
end
