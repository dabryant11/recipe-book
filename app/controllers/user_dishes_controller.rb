class UserDishesController < ApplicationController
    def index 
        user_dishes = UserDish.all
        
        render json: user_dishes
    end

    def show
    user_dish = UserDish.find(params[:id])
    render json: user_dish

    end
end
