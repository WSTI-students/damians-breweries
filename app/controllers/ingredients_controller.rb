class IngredientsController < ApplicationController
	def get_all_and_return_json
  	  @ingredients = Ingredient.where("user_id IS ? or user_id=?", nil, current_user.id)

  	  respond_to do |format|
        format.json {
        	render json: {:ingredients => @ingredients}
        }
  	  end
	end
end
