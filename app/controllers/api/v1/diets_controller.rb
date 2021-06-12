class Api::V1::DietsController < ApplicationController

    def show
        diet = Diet.find(params[:id])
        render json: diet
    end

    def create
        diet = Diet.create(diet_params)
        render json: diet
    end

    def update
    end
end
