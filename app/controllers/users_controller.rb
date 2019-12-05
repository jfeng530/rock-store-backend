class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user_id = params[:id]
        if current_user_id == user_id.to_i
        user = User.find(user_id)
        render json: user.to_json(:include => {
            :orders => {:only => [:id, :user_id]}
          })
        else render json: { go_away: true }, status: :unauthorized
        end
    end

    
    def create
        user = User.create(user_params)
        if user.valid?
        render json: { token: token(user.id), user_id: user.id}
        
        else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end 
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
          render json: user.to_json
        else
        render json: user.errors, status: :unprocessable_entity
        end 
      end


  def destroy
    User.destroy(params[:id])
  end
      
  
      private
  
      def user_params
        params.require(:user).permit(:username, :password, :admin)
      end
end
