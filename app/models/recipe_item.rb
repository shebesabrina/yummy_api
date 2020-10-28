class RecipeItem < ApplicationRecord
    validates :title, presence: true
    validates :image, presence: true
    validates :description, presence: true
    validates :chef_name, presence: true

    has_many :recipe_tag_items
    has_many :tag_items, through: :recipe_tag_items
end
