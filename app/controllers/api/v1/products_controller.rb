require 'application_controller'

class Api::V1::ProductsController < ApplicationController
	def fetch_product
		@product = Product.find_by_id(params[:id])
	end

	def index
		@products = Product.all
    	# render :json => @products
    end
end
