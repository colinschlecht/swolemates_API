class Api::V1::ExerciseTimesController < ApplicationController
        
    def index
        exercise_times = ExerciseTime.all
        render json: exercise_times
    end

    def show
        exercise_time = ExerciseTime.find(params[:id])
        render json: exercise_time
    end

    def create
        exercise_time = ExerciseTime.create(exercise_time_params)
        render json: exercise_time
    end

    def update
        exercise_time = ExerciseTime.find(params[:id])
        if exercise_time.update(exercise_time_params)
            render json: exercise_time
        else
            render json: {message: 'Error'}
        end
    end

    def destroy
        exercise_time = ExerciseTime.find(params[:id])
        exercise_time.destroy
        render json: { message: 'Exercise Time Entry Deleted'}
    end

    private

    def exercise_time_params
        params.require(:exercise_time).permit(:early_morning, :morning, :afternoon, :early_evening, :late_evening, :late_night)
    end
end
