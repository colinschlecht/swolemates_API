class Api::V1::UnmatchesController < ApplicationController

    def create
        unmatch = Unmatch.create(match_params)
        render json: match_entry
    end

    def destroy
        unmatch = Unmatch.find(params[:id])
        unmatch.destroy
        render json: { message: 'Unmatch entry deleted.'}
    end

    private
    
    def match_params
        params.require(:match_req).permit(:id, :user_id, :friend_id)
    end
end
