class Api::V1::RecipeItemsController < ApplicationController
    def index
        render json: RecipeItem.all
    end

    def show
        render json: RecipeItem.find(params[:id])
    end
    
end