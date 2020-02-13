class OrderItemsController < ApplicationController
    before_action :find_order_item, only: [:show, :update, :destroy]

    def index
        order_items = OrderItem.all
        render json: OrderItemSerializer.new(order_items)
    end

    def show
        order_item = OrderItem.find(params[:id])
        render json: OrderItemSerializer.new(order_item)
    end

    def new
        order_item = OrderItem.new
    end

    def create
       @order_item = OrderItem.find_or_create_by(order_item_params)
        render json: OrderItemSerializer.new(@order_item)
    end

    def update
        OrderItem.update(order_item_params)
        render json: OrderItemSerializer.new(@order_item)
    end

    def destroy
        @order_item.delete
        order_items = OrderItem.all
        render json: OrderItemSerializer.new(order_items)
    end

    private

    def find_order_item
        @order_item = OrderItem.find(params[:id])
    end

    def order_item_params
        params.require(:order_item).permit(:quantity, :price, :order_id, :product_id)
    end
end
