class Api::V1::MatchRequestsController < ApplicationController

    def create
        match_req = MatchRequest.create(match_req_params)
        render json: match_req
    end

    def destroy
        match_req = MatchRequest.find(params[:id])
        match_req.destroy
        render json: { message: 'Match request deleted.'}
    end

    private
    
    def match_req_params
        params.require(:match_req).permit(:id, :user_id, :friend_id)
    end
end
