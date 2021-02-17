class DishSerializer < ActiveModel::Serializer
    attributes :id, :name, :instructions, :image, :food_history, :category
    has_many :dish_ingredients
    # has_many :ingredients, through: :dish_ingredients
  end

#   t.string "name"
#     t.string "instructions"
#     t.string "image"
#     t.string "food_history"
#     t.string "category"