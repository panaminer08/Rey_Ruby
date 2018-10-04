class StudentsController < ApplicationController
  def index
  end

  def update
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.create(params[:student].to_unsafe_hash)
  end

  def delete
  end
end
