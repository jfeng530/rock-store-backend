class PurchasesController < ApplicationController

    def index
        purchases = Purchase.all
        render json: purchases.to_json
    end

    def show
      purchase = Purchase.find(params[:id])
      render json: purchase.to_json
    end

    private

    def purchase_params
      params.require(:purchase).permit(:rock_id, :order_id, :quantity)
    end 

end
