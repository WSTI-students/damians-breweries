class RecipeForm
  include ActiveModel::Model
  attr_accessor :name, :description, :process_desc, :style_id

  def initialize(params = nil, recipe = nil)
    @params = params
    @recipe = recipe
    assign_attributes
  end

  private

  def assign_attributes
    prepare_edit_form if @recipe
    return unless @params
    @name = @params[:name]
    @description = @params[:description]
    @process_desc = @params[:process_desc]
    @style_id = @params[:style_id]
  end

  def prepare_edit_form
    self.name = "ASd"
  end
end
