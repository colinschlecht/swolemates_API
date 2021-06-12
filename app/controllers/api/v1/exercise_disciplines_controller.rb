class Api::V1::ExerciseDisciplinesController < ApplicationController

    def index
        disciplines = ExerciseDiscipline.all
        render json: disciplines
    end

    def show
        discipline = ExerciseDiscipline.find(params[:id])
        render json: discipline
    end

    def create
        discipline = Diet.create(diet_params)
        render json: discipline
    end

    def update
        discipline = ExerciseDiscipline.find(params[:id])
        if discipline.update(discipline_params)
            render json: discipline
        else
            render json: {message: 'Error'}
        end
    end

    def destroy
        discipline = ExerciseDiscipline.find(params[:id])
        discipline.destroy
        render json: { message: 'Discipline Entry Deleted'}
    end

    private

    def discipline_params
        params.require(:discipline).permit(:id, :cardio, :muscle_strengthening, :aerobic)
    end
end
