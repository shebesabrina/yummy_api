class TagItem < ApplicationRecord
    validates :dietary_restrictions, presence: true

    has_many :recipe_tag_items
    has_many :recipe_items, through: :recipe_tag_items
end
