class SearchController < ApplicationController
    def index
        num_per_page = 12
        conn = Faraday.new(url: "https://api.spoonacular.com/recipes/random?apiKey=#{ENV['API_KEY']}&number=#{num_per_page}")
        response = conn.get
        all_recipes = JSON.parse(response.body)["recipes"]
        @recipes = all_recipes.select { |recipe| recipe["title"].present? && recipe["image"].present? }
        render :index
    end

    def show
        id = params["id"]
        conn = Faraday.new(url: "https://api.spoonacular.com/recipes/#{id}/information?apiKey=#{ENV['API_KEY']}")
        # binding.pry
        response = conn.get
        @recipe = JSON.parse(response.body)
        render :show
    end
end