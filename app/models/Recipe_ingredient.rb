class Recipe_ingredient < ApplicationRecord
    belongs_to :recipes
    belongs_to :ingredients
end
