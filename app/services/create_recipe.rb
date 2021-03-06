class CreateRecipe
  def initialize(user:, form:)
    @user = user
    @form = form
  end

  def call
    recipe = @user.recipes.create(
      name: @form.name,
      description: @form.description,
      process_desc: @form.process_desc,
      style_id: @form.style_id
    )
    recipe
  end
end
