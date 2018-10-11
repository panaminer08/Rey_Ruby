class ProfilesController < ApplicationController
  def index
  end

  def new
    @students = Student.all.map{|s| [ s.first_name ]}
    @teachers = Teacher.all.map{|i| [ i.first_name ]}
    @profile = Profile.new
  end

  def edit
  end

  def show_teacher
    @teacher = Teacher.find(params[:id])
  end

  def show_student
    @student = Student.find(params[:id])
  end

  def update
  end

  def delete
  end

  def create
    @profile = Profile.create(params[:profile])
    sessio
  end
end
