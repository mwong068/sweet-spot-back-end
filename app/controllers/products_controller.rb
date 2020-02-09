class ProductsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        products = Product.all
        render json: ProductSerializer.new(products)
    end

    def show
        product = Product.find(params[:id])
        render json: ProductSerializer.new(product)
    end

    # def new
    #     user = User.new
    # end
    
    # def create
    # end

    # def update
    # end

    # def destroy
    # end

end
