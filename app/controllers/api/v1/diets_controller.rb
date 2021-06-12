class Api::V1::DietsController < ApplicationController

    def index
        diets = Diet.all
        render json: diets
    end

    def show
        diet = Diet.find(params[:id])
        render json: diet
    end

    def create
        diet = Diet.create(diet_params)
        render json: diet
    end

    def update
        diet = Diet.find(params[:id])
        if diet.update(diet_params)
            render json: diet
        else
            render json: {message: 'Error'}
        end
    end

    def destroy
        diet = Diet.find(params[:id])
        diet.destroy
        render json: { message: 'Diet Entry Deleted'}
    end

    private

    def diet_params
        params.require(:diet).permit(:id, :keto, :low_carb, :vegan, :vegetarian, :pescatarian, :alkaline, :raw_food, :intermittent_fasting, :paleo, :clean_eating, :mediterranean)
    end
end
