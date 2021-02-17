class DishSerializer < ActiveModel::Serializer
    attributes :id, :name, :instructions, :image, :food_history, :category
    has_many :ingredients
    # has_many :ingredients, through: :dish_ingredients
  end
