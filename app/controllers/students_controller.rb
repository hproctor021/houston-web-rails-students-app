class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        current_student
    end

    def new
        @student = Student.new
    end

    def create
        new_student = Student.create(student_params)
        redirect_to student_path(new_student)
    end

    def edit
        current_student
    end

    def update
        current_student.update(student_params)
        redirect_to student_path(current_student)
    end

    def destroy
        current_student
        current_student.destroy
        redirect_to student_path
    end

    def current_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:name, :major, :age, :instructor_id)
    end

end
