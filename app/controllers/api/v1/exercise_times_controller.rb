class Api::V1::ExerciseTimesController < ApplicationController
        
    def index
        exercise_times = ExcerciseTime.all
        render json: excercise_times
    end

    def show
        exercise_time = ExcerciseTime.find(params[:id])
        render json: excercise_time
    end

    def create
        excercise_time = Diet.create(excercise_time_params)
        render json: excercise_time
    end

    def update
        exercise_time = ExcerciseTime.find(params[:id])
        if excercise_time.update(excercise_time_params)
            render json: excercise_time
        else
            render json: {message: 'Error'}
        end
    end

    def destroy
        excercise_time = ExerciseTime.find(params[:id])
        excercise_time.destroy
        render json: { message: 'Discipline Entry Deleted'}
    end

    private

    def excercise_time_params
        params.require(:excercise_time).permit(:early_morning, :morning, :afternoon, :early_evening, :late_evening, :late_night)
    end
end
