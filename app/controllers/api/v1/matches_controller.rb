class Api::V1::MatchesController < ApplicationController

    def create
        match_entry = Match.create(match_params)
        render json: match_entry
    end

    def destroy
        match_entry = Match.find(params[:id])
        match_entry.destroy
        render json: { message: 'Match deleted.'}
    end

    private
    
    def match_params
        params.require(:match_req).permit(:id, :user_id, :friend_id)
    end
end
