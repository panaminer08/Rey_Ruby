class StudentCohortsController < ApplicationController
  def index
  end

  def edit
  end

  def update
  end

  def new
    @students = Student.all.map{|s| [ s.first_name]}
    @cohorts = Cohort.all.map{|c| [c.name]}
    @student_cohorts = StudentCohort.new
  end

  def create
    @studentCohorts = StudentCohorts.create(params[:studentCohorts][:cohort_id],params[:studentCohorts][:student_id])
  end

  def delete
  end
end
