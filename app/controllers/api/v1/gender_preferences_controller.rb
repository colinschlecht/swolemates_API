class Api::V1::GenderPreferencesController < ApplicationController

    def index
        gender_prefs = GenderPreference.all
        render json: gender_prefs
    end

    def show
        gender_pref = GenderPreference.find(params[:id])
        render json: gender_pref
    end

    def create
        gender_pref = GenderPreference.create(gender_pref_params)
        render json: gender_pref
    end

    def update
        gender_pref = GenderPreference.find(params[:id])
        if gender_pref.update(gender_pref_params)
            render json: gender_pref
        else
            render json: {message: 'Error'}
        end
    end

    def destroy
        gender_pref = GenderPreference.find(params[:id])
        gender_pref.destroy
        render json: { message: 'Gender Preference Entry Deleted'}
    end

    private
    
    def gender_pref_params
        params.require(:gender_preference).permit(:male, :female, :non_binary, :none)
    end
end
