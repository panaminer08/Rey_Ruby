class ProfileController < ApplicationController
  def index
  end

  def create
      @student = Student.create(params[:student])
  end

  def teacher-create
    @teacher = Teacher.create(params[:teacher])
  end

  def teacher-new
    @teacher = Teacher.new
  end

  def new
    @student = Student.new
  end

  def update
  end
end
