class Recipe < ApplicationRecord
    validates :title, presence: true
    validates :image, presence: true
    validates :description, presence: true
    validates :chef_name, presence: true
end
