class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    #  byebug
  end

  def activate #takes in student param from url.
    #@student = Student.find(params[:id]) #find specific student
    set_student
    @student.update(active: !@student.active) #update student active setting the current active as param
    #@student.save
    redirect_to show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end