class Api::V1::DietsController < ApplicationController

    def index
        diets = Diet.all
        render json:diets
    end

    def show
        diet = Diet.find(params[:id])
        render json: diet
    end

    def create
        diet = Diet.create(diet_params)
        render json: diet
    end

    # def update
    #     diet = 
    # end
end
