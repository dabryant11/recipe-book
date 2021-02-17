class IngredientSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_many :dish_ingredients
    # has_many :dishes, through: :dish_ingredients
  end