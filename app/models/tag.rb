class Tag < ApplicationRecord
    validates :dietary_restrictions, presence: true

    has_many :recipe_tags
    has_many :recipes, through: :recipe_tags
end