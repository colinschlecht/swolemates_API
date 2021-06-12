class Api::V1::LocationsController < ApplicationController
    
    def index
        locations = Location.all
<<<<<<< HEAD
        render json: locations
=======
        render json:diets
>>>>>>> 7708a6437b5fc7f4e002dc0fe85346b52b85eaf8
    end

    def show
        location = Location.find(params[:id])
        render json: location
    end

    def create
        location = Location.create(location_params)
<<<<<<< HEAD
        render json: location
=======
        render json: diet
>>>>>>> 7708a6437b5fc7f4e002dc0fe85346b52b85eaf8
    end

    def update
        location = Location.find(params[:id])
<<<<<<< HEAD
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
=======
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
>>>>>>> 7708a6437b5fc7f4e002dc0fe85346b52b85eaf8
    end
end
