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


dishes = [
   {name: "Fried Egg", instructions: "In a small nonstick over medium heat, melt butter (or heat oil). Crack egg into pan. Cover with a tight fitting lid and cook 3 minutes, or until white is set. Remove from pan and season with salt and pepper.", image: "https://i.pinimg.com/originals/9b/66/d2/9b66d2408b019a22ba4bc5260c898e64.jpg", food_history: "It is known for sure that the ostrich eggs were fried in the fire by the ancient Egyptians. The ancient Romans used fried eggs as a dessert with honey. And the ancestors of the inhabitants of modern Iran, mixed the yolk with milk and spices, the French in the middle of the seventeenth century will call it - an omelet.", category: "Breakfast"},
   
   {name: "Lomo Saltado", instructions: "
   1
   Season the beef with garlic, salt and pepper.
   2
   Put a wok or a pan over very high heat. Stir in oil and cook the meat, a few slices at a time so they do not steam and the meat browns Cook each batch 2 minutes.
   3
   Stir in the onion, tomato, chili pepper, and stir for about 2 to 3 minutes. The tomatoes and onions should be crunchy, not mushy. Stir in soy sauce and vinegar on sides of wok or pan. Mix everything. Add beef broth and cook 1-1/2 minutes. Taste for seasoning.
   4
   Turn off the heat, add chopped cilantro and serve at once with French fries and white rice.", image: "https://images-gmi-pmc.edge-generalmills.com/7bbcdd09-3380-4117-951b-1c8098ca984e.jpg", food_history: "Lomo Saltado, a stir-fried beef dish found all across Peru, was born on Calle La Concepción in Lima, Peru's Barrio Chino.", category: "Peruvian"
   },
   {name: "Butter Chicken", instructions: "1 tablespoon oil
   1 tablespoon butter
   1 medium onion diced
   1 teaspoon fresh ginger finely minced or grated (or use paste)
   2-3 cloves garlic finely minced or crushed
   1 ½ pounds about 2-3 boneless, skinless chicken breasts, cut into ¾-inch chunks
   4 tablespoons tomato paste or 8 oz can of tomato sauce
   1 tablespoon garam masala
   1 teaspoon  or paprika, adjust to taste
   1 teaspoon Fenugreek I use powder, but seeds or mustard seeds can be used too, optional*
   1 teaspoon 
   1 tsp salt
   1/4 tsp black pepper
   1 cup heavy cream sub for half & half or yogurt for low fat
   Hot cooked rice and naan for serving", image: "https://i2.wp.com/gimmedelicious.com/wp-content/uploads/2020/01/30-Minute-Instant-Pot-Butter-Chicken-7.jpg", food_history: "Butter chicken originated in Delhi, the capital territory of India, sometime during the 1950s. During this time, a man named Kundan Lal Gurjal operated a restaurant in the city, called Moti Mahal. Kundan had settled here and started his business after fleeing from political upheaval in another region of India.", category: "Indian"}
]

dishes.each {|dish| Dish.create(dish)}


ing1 = Ingredient.create(name: "Salt")
ing2 = Ingredient.create(name: "Pepper")

# ingredients.each {|ingredient| Ingredient.create(ingredient)}


dish_ingredients = [
    {dish_id: Dish.first.id, ingredient_id: ing1.id },
    {dish_id: Dish.second.id, ingredient_id: ing2.id}
]


dish_ingredients.each {|dish_ingredient| DishIngredient.create(dish_ingredient)}

user_dishes= [
    {user_id: User.first.id, dish_id: Dish.first.id }
    # {user_id: User.second.id, dish_id: Dish.second.id }
]


user_dishes.each {|user_dish| UserDish.create(user_dish)}