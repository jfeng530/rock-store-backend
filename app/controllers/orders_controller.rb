class OrdersController < ApplicationController
    def index
      if client_has_valid_token?
        orders = Order.all
        render json: orders.to_json(:include => {
      :purchases => {:only => [:id, :rock_id, :order_id, :quantity]}
    })
    else
      render json: {go_away: true}, status: :unauthorized
    end
    end

    def show
      order = Order.find(params[:id])
      render json: order.to_json(:include => {
        :purchases => {:only => [:id, :rock_id, :order_id, :quantity]}
      })
    end

    def create
      order = Order.create(order_params)
      if order.valid?
        render json: order
      else
        render json: { errors: order.errors.full_messages }  
      end 
    end 

    private

    def order_params
      params.require(:order).permit(:user_id)
    end 
end
