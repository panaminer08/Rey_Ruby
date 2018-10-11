class TeachersController < ApplicationController
  def index

      if sessions[:teacher_id] 
        flash[:notice] = "Welcome, let's get ready for the day!!"

        render "dashboard/teacher_profile"
      else
        flash.now.alert = "Let's get it correct, you're being watched"
        redirect "teacher_path"
      end
  end

  def sign_in
    @teacher  = Teacher.find_by(username: params[:session][:username])

      if session[:teacher_id]
        flash[:notice]= "Successfully Signed In"

        redirect_to "teacher_path"

      else

        flash.now.alert = "Incorrect Information, please try again"
        render "index"
      end
  end

  def create
    @teacher = Teacher.create(teacher_params) 
    sessions[:teacher_id]
    redirect_to instructor_path  
  end

  def new
    @teacher = Teacher.new
  end

  def edit
    @teacher = Teacher.find(teacher_params)
  end

  def update
    @teacher = Teacher.update(teacher_params)
  end

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :username, :birth_date, :salary, :highest_completed_education, :cohorts_id)
  end

  def delete
  end
end
