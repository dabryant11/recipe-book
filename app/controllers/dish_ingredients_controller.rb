class DishIngredientsController < ApplicationController
    def index 
        dish_ingredients = DishIngredient.all
        
        render json: dish_ingredients
    end

    def show
    dish_ingredient = DishIngredient.find(params[:id])
    render json: dish_ingredient

    end
end
