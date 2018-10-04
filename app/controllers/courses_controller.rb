class CoursesController < ApplicationController
  def index
  end

  def create
    @course = Course.create(params[:course][:cohorts_id])
  end

  def new
    @course = Course.new
    @cohort = Cohort.all
  end

  def edit
  end

  def update
  end

  def delete
  end
end
