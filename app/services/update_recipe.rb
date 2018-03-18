class UpdateRecipe
  def initialize(recipe:, form:)
    @recipe = recipe
    @form = form
  end

  def call
    @recipe.update(
      name: @form.name,
      description: @form.description,
      process_desc: @form.process_desc,
      style_id: @form.style_id
    )
  end
end
