class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  belongs_to :user
  has_one :style

  def self.search(search)
    where("name LIKE ? " , "%#{search}%")
  end

  def self.styles
    Style.all
  end

  def style
    Style.find(self.style_id) if self.style_id
  end
end
