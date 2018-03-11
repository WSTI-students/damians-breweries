class Recipe < ApplicationRecord
<<<<<<< 6445bed3165d96e1307a408059f509baa702667e
end
=======
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
end
>>>>>>> Adds corrections after comments
