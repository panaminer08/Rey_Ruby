class ProfilesController < ApplicationController

  def show_teacher
    @teacher = Teacher.find(params[:teacher])
  end

  def student_show
    @student = Student.find_by(params[:student])
    @teachers = Teacher.all.map{|i| [ i.first_name ]}
  end
end
