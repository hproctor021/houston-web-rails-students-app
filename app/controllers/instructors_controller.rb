class InstructorsController < ApplicationController

    def index
        @instructors = Instructor.all
    end

    def show
        current_instructor
    end

    def new
        @instructor = Instructor.new
    end

    def create
        new_instructor = Instructor.create(instructor_params)
        redirect_to instructor_path(new_instructor)
    end

    def edit
        current_instructor
    end

    def update
        current_instructor.update(instructor_params)
        redirect_to instructor_path(current_instructor)
    end

    def destroy
        current_instructor
        current_instructor.destroy
        redirect_to instructors_path
    end

    def current_instructor
        @instructor = Instructor.find(params[:id])
    end

    def instructor_params
        params.require(:instructor).permit(:name)
    end

end
