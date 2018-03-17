class RecipesController < ApplicationController
  def new
  	@recipe = current_user.recipes.new
  	@styles = Style.all
  end

  def create
  	current_user.recipes.create(recipe_params)
  end

  private

  def recipe_params
	params.require(:recipe).permit(:name, :description, :style_id, :process_desc)
  end
end
