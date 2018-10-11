class CoursesController < ApplicationController
  def index
    @course = Course.all
  end

  def create
    @course = Course.create(params[:course][:cohorts_id])
    redirect_to "/flashes/admin_panel"
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
