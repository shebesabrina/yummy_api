class Recipe < ApplicationRecord
    validates :title, presence: true
    validates :image, presence: true
    validates :description, presence: true
    validates :chef_name, presence: true

    has_many :recipe_tags
    has_many :tags, through: :recipe_tags
end
