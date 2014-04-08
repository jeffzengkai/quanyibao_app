class ProductController < ApplicationController
    public def show
	@project=Project.find(params[:id])
    end
end
