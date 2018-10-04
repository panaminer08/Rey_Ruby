class TeachersController < ApplicationController
  def index
  end

  def create
    @teacher = Teacher.create(params[:teacher].to_unsafe_hash)
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def update
  end

  def delete
  end
end
