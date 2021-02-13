class CreateDishIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :dish_ingredients do |t|
      t.integer :dish_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
