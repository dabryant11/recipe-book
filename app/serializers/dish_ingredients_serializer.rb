class DishIngredientSerializer < ActiveModel::Serializer
    attributes :id, :dish_id, :ingredient_id
    # belongs_to :dish
    # belongs_to :ingredient
  end
  
#   t.integer "dish_id"
#   t.integer "ingredient_id"