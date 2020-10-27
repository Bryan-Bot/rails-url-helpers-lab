class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

end