class RecipeTagItem < ApplicationRecord
  belongs_to :recipe_item
  belongs_to :tag_item
end
