class Api::V1::TagsController < ApplicationController
    def index
        render json: Tag.all
    end

    def show
        render json: Tag.find(params[:id])
    end    
end