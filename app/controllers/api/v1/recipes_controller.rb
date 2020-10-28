class Api::V1::RecipesController < ApplicationController
    def index
        recipes = Recipe.all.map do |obj|
            obj[:title] && obj[:image]
        end
        render json: recipes
    end
end