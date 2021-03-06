class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  if params[:search]
    @recipes = Recipe.search(params[:search]).order("created_at DESC")
  else
    @recipes = Recipe.all.order("created_at DESC")
  end
end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.recipe_ingredients
  end

  def new
    recipe_form = RecipeForm.new
    styles = Recipe.styles

    render locals: { recipe_form: recipe_form, styles: styles }
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

  def create
    recipe_form = RecipeForm.new(recipe_params)
    recipe = CreateRecipe.new(user: current_user, form: recipe_form).call
    AddIngredientsToRecipe.new(recipe: recipe, form: recipe_form, current_user: current_user).call
    redirect_to recipes_path
  end

  def edit
    @recipe = Recipe.find(params[:id])
    recipe_form = RecipeForm.new
    styles = Recipe.styles

    render locals: { recipe_form: recipe_form, styles: styles }
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe_form = RecipeForm.new(recipe_params, recipe)
    UpdateRecipe.new(recipe: recipe, form: recipe_form).call
    redirect_to recipes_path
  end

  private

  def recipe_params
	  params.require(:recipe_form).permit(:name, :description, :process_desc, :style_id, {:ingredients => []}, {:ingredients_custom => []}, {:ingredients_quantity => []})
  end
end
