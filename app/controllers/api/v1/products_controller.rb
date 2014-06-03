require 'application_controller'

class Api::V1::ProductsController < ApplicationController

	before_filter :fetch_product, :except => [:index, :create]

	def fetch_product
		@product = Product.find_by_id(params[:id])
	end

	def index
		@products = Product.all
    	# render :json => @products
    end
end
