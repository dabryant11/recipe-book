class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :instructions
      t.string :image
      t.string :food_history
      t.string :category

      t.timestamps
    end
  end
end
