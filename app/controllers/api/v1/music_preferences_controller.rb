class Api::V1::MusicPreferencesController < ApplicationController

    def index
        music_pref = MusicPreference.all
        render json: music_pref
    end

    def show
        music_pref = MusicPreference.find(params[:id])
        render json: music_pref
    end

    def create
        music_pref = MusicPreference.create(music_pref_params)
        render json: music_pref
    end

    def update
        music_pref = MusicPreference.find(params[:id])
        if music_pref.update(music_pref_params)
            render json: music_pref
        else
            render json: {message: 'Error'}
        end
    end

    def destroy
        music_pref = MusicPreference.find(params[:id])
        music_pref.destroy
        render json: { message: 'Music Preference Entry Deleted'}
    end

    private

    def music_pref_params
        params.require(:music_pref).permit(:rock, :techno, :rap, :country, :pop, :alternative, :classical, :funk, :latin, :jazz, :none)
    end
end
