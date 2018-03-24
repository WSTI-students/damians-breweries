class AddIngredientsToRecipe
  def initialize(recipe:, form:, current_user:)
  	@recipe = recipe
  	@form = form
  	@current_user = current_user
  end

  def call
  	if @form.ingredients
  	  @form.ingredients.each_with_index do |value, index|
  	  	if !@form.ingredients_custom[index].blank?
  	  	  ingredient = Ingredient.create(name: @form.ingredients_custom[index], user_id: @current_user.id, category: 'custom')
  	  	else
  	  	  ingredient = Ingredient.find(value)
  	  	end
  	  	RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: ingredient.id, quantity: @form.ingredients_quantity[index]);
  	  end
  	end
  end
end