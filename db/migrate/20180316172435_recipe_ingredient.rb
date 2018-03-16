class RecipeIngredient < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :ingredients_id
      t.integer :recipes_id 
      t.float :quantity
      t.timestamps
    end
  end
end
