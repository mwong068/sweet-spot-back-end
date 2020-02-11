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

    def new
        user = User.new
    end
    
    def create
        @product = Product.create(product_params)
        render json: ProductSerializer.new(@product)
    end

    # def update
    # end

    # def destroy
    # end

    private

    def product_params
        params.require(:product).permit(:name, :price, :quantity, :rating, :description, :ingredients, :image)
    end

end
