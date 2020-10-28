class Api::V1::TagItemsController < ApplicationController
    def index
        render json: TagItem.all
    end

    def show
        render json: TagItem.find(params[:id])
    end    
end