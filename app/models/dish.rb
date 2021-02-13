class Dish < ApplicationRecord
    has_many :user_dishes
    has_many :users, through: :user_dishes

    has_many :dish_ingredients
    has_many :ingredients, through: :dish_ingredients
end
