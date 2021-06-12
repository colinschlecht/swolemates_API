class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:login]

    def login
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            token = encode_token({ user_id: user.id })
            render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
        else
            render json: { message: 'Invalid email address or password' }, status: :unauthorized
        end
    end

    #! may or may not use
    def auto_login
        if current_user
            render json: current_user
        else
            render json: { errors: "No user logged in" }
        end
    end
end
