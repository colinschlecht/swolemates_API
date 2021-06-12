class Api::V1::LocationsController < ApplicationController
    
    def index
        locations = Location.all
        render json: locations
    end

    def show
        location = Location.find(params[:id])
        render json: location
    end

    def create
        location = Location.create(location_params)
        render json: location
    end

    def update
        location = Location.find(params[:id])
        if location.update(location_params)
            render json: location
        else 
            render json: {message: 'error!!'}
        end
    end

    def destroy 
        location = Location.find(params[:id])
        location.destroy
        render json: {message: 'Location Deleted'}
    end
    
    private 
    def location_params
        params.require(:location).permit(:id, :latitude, :longitude)
    end
end
