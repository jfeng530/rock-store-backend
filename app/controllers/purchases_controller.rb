class PurchasesController < ApplicationController

    def index
        purchases = Purchase.all
        render json: purchases
    end

    def show
      purchase = Purchase.find(params[:id])
      render json: purchase
    end

    def create
      purchase = Purchase.create(purchase_params)
      if purchase.valid? 
        render json: purchase 
      else
        render json: { errors: purchase.errors.full_messages }, status: :unprocessable_entity
      end 
    end 

    def destroy
      Purchase.destroy(params[:id])
    end

    private

    def purchase_params
      params.require(:purchase).permit(:rock_id, :order_id, :quantity)
    end 

end
