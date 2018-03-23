class RecipeIngredient < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe
      t.references :ingredient
      t.float :quantity
      t.timestamps
    end
  end
end
