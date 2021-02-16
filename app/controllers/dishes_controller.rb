class DishesController < ApplicationController
    
    
    
    def index 
        dishes = Dish.all
        
        render json: dishes
    end

    def new 
        dish = Dish.new
    end

    def create 
        dish = Dish.create(dish_params)
        render json: dish 

    end

    def update 
        dish = Dish.find(params[:id])
               dish.update(dish_params)
               render json: dish 
    end

    def show 
        dish = Dish.find(params[:id])

        render json: dish
    end

    def destroy
        dish_to_delete = Dish.find(params[:id])
        dish_to_delete.destroy

        render json: dish_to_delete
    end


    private 

    def dish_params
        params.require(:dish).permit(:name, :image, :category, :food_history, :ingredients, :instructions)

    end
end
