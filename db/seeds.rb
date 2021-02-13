require 'faker'
User.destroy_all
User.reset_pk_sequence

Dish.destroy_all
Dish.reset_pk_sequence

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = [
    {name: "Ruby", age: 21, bio: "i love food"}
]

users.each {|user| User.create(user)}


5.times do 
    Dish.create(name: Faker::Food.dish, instructions: Faker::Food.description, image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Salad_platter.jpg/1200px-Salad_platter.jpg', food_history: Faker::Food.measurement, category: Faker::Food.spice )
end


ingredients = [
    {name: "Salt"},
    {name: "Pepper"}
]

ingredients.each {|ingredient| Ingredient.create(ingredient)}


dish_ingredients = [
    {dish_id: Dish.first.id, ingredient_id: Ingredient.first.id },
    {dish_id: Dish.second.id, ingredient_id: Ingredient.second.id }
]


dish_ingredients.each {|dish_ingredient| DishIngredient.create(dish_ingredient)}

user_dishes= [
    {user_id: User.first.id, dish_id: Dish.first.id }
    # {user_id: User.second.id, dish_id: Dish.second.id }
]


user_dishes.each {|user_dish| UserDish.create(user_dish)}