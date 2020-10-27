class SearchController < ApplicationController
    def index
        num_per_page = 12
        conn = Faraday.new(url: "https://api.spoonacular.com/recipes/random?apiKey=#{ENV['API_KEY']}&number=#{num_per_page}")
        response = conn.get
        all_recipes = JSON.parse(response.body)["recipes"]
        @recipes = all_recipes.select { |recipe| recipe["title"].present? && recipe["image"].present? }
        render :index
    end
end