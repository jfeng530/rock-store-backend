class OrdersController < ApplicationController
    def index
      # if client_has_valid_token?
        orders = Order.all
        render json: orders
    # else
    #   render json: {go_away: true}, status: :unauthorized
    # end
    end

    def show
      order = Order.find(params[:id])
      render json: order
    end

    def create
      order = Order.create(order_params)
      if order.valid?
        render json: order
      else
        render json: { errors: order.errors.full_messages }  
      end 
    end 

    def update
      order = Order.find(params[:id])
      if order.update(order_params)
        # new_order = Order.create(user_id: params[:id], checkedout: false)
        render json: order
      else
        render json: order.errors, status: :unprocessable_entity
      end
    end

    private

    def order_params
      params.require(:order).permit(:user_id, :checkedout)
    end 
end
