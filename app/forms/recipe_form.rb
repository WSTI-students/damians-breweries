class RecipeForm
  include ActiveModel::Model
  attr_accessor :name, :description, :process_desc, :style_id

  def initialize(params = nil)
    @params = params
    assign_attributes
  end

  private

  def assign_attributes
    return unless @params
    @name = @params[:name]
    @description = @params[:description]
    @process_desc = @params[:process_desc]
    @style_id = @params[:style_id]
  end
end
