class RocksController < ApplicationController
    def index
        rocks = Rock.all
        render json: rocks.to_json(:include => {
      :purchases => {:only => [:id, :rock_id, :order_id, :quantity]}
    })
    end

    def show
        rock = Rock.find(params[:id])
        render json: rock.to_json
      end
  
      
  
      private
  
      def rock_params
        params.require(:rock).permit(:name, :image_url, :description, :price, :category, :color, :rating, :quantity)
      end
end
