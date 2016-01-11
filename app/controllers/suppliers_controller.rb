class SuppliersController < ApplicationController
def index
	
	@supply = Supplier.all
end
end
