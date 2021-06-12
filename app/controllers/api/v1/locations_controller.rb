class Api::V1::LocationsController < ApplicationController
    
    def index
        locations = Location.all
        render json:diets
    end

    def show
        location = Location.find(params[:id])
        render json: location
    end

    def create
        location = Location.create(location_params)
        render json: diet
    end

    def update
        location = Location.find(params[:id])
        if location.update(location_params)
            render json: location
        else
            render json: {message: 'Error'}
        end
    end

    def destroy
        location = Location.find(params[:id])
        location.destroy
        render json: { message: 'Location Entry Deleted'}
    end

    private

    def location_params
        params.require(:location).permit(:latitude, :longitude)
    end
end
