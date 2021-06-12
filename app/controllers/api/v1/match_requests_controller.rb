class Api::V1::MatchRequestsController < ApplicationController

    def create
        match_req = MatchRequest.create(match_req_params)
        render json: match_req
    end

    def destroy
        match_req = MatchRequest.find(params[:id])
        render json: { message: 'Match request deleted.'}
    end

    private
    
    def match_req_params
        
    end
end
