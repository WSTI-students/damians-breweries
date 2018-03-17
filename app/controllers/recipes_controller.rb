class RecipesController < ApplicationController
  def index
    @recipies = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def new
    recipe_form = RecipeForm.new
    styles = Recipe.styles

    render locals: { recipe_form: recipe_form, styles: styles }
  end

  def create
    recipe_form = RecipeForm.new(recipe_params)
    CreateRecipe.new(user: current_user, form: recipe_form).call
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
  end

  private

  def recipe_params
	  params.require(:recipe_form).permit(:name, :description, :process_desc, :style_id)
  end
end
