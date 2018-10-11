class CohortsController < ApplicationController
  
  def index
    @teacher = Teacher.all
    @course
  end

 def create
    @cohort = Cohort.create(params[:cohort][:teachers_id][:course_id])
    redirect_to "/dashboard/admin_panel"
  end

  def new
    @teacher = Teacher.all.map{|t| [t.id, t.first_name]}
    @course = Course.all.map{|h| [h.id]}
    @cohort = Cohort.new
  end

  def edit
  end

  def update
  end

  def delete
  end
end
