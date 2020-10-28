class StudentsController < ApplicationController
    
    def show
        @student = Student.find(params[:id])
        render :show
    end

    def new
        # render :new
    end

    def create
        @student = Student.new
        @student[:first_name] = params[:student][:first_name]
        @student[:last_name] = params[:student][:last_name]
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        @student = Student.find(params[:id])
        render :edit
    end

    def update
        @student = Student.find(params[:id])
        @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
        redirect_to student_path(@student)
    end
    
end