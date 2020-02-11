class OrdersController < ApplicationController
    before_action :find_order, only: [:show, :update, :destroy]

    def index
        orders = Order.all
        render json: OrderSerializer.new(orders)
    end

    def show
        order = Order.find(params[:id])
        render json: OrderSerializer.new(order)
    end

    def new
        order = Order.new
    end

    def create
       @order = Order.find_or_create_by(order_params)
        render json: OrderSerializer.new(@order)
    end

    def update
        Order.update(order_params)
        render json: OrderSerializer.new(@order)
    end

    def destroy
    end

    private

    def find_order
        @order = Order.find(params[:id])
    end

    def order_params
        params.require(:order).permit(:active, :shipped, :tracking_id, :quantity, :total, :user_id)
    end
end
