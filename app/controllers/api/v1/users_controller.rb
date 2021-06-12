class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create, :index, :show, :profile]

  def index
      users = User.all.limit(20)
      render json: users
  end

  def show
      user = User.find_by(id: params[:id])
      render json: user
  end

  def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
      #! sign-up action
      user = User.create(user_params)
      if user.valid?
          token = encode_token({ user_id: user.id })
          render json: { id: user.id, name: user.name, jwt: token }, status: :created
      else
          render json: { error: user.errors.full_messages }, status: :not_acceptable
      end
  end

  private

  def user_params
      params.require(:user).permit(:name, :email, :bio, :age, :gender, :password, :password_confirmation, :exercise_time_id, :exercise_discipline_id, :diet_id, :gender_preference_id, :location_id, :music_preference_id)
  end
end
