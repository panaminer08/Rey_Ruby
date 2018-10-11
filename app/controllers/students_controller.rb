class StudentsController < ApplicationController
  def index
        
      if  session[:student_id] 

          flash[:notice] = "Successfully logged in!"
        
        redirect_to "pupil_path"
      else
          flash.now.alert = "Incorrect username or password, try again."
          render :index
     end
  end

  def sign_in
    @student = Student.find_by(username: params[:session][:username])

      if session[:student_id]
        flash[:notice] = "Successfully Signed In"

        redirect_to "pupil_path"

      else

        flash.now.alert = "Incorrect Information Try Again"
        render "index"
      end
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    session[:student_id]
    redirect_to pupil_path
  end

  def edit
    @student = Student.find(student_params)
  end

  def update
    @student = Student.update(student_params)
  end

  def student_params
    params.require( :student ).permit(:first_name, :last_name, :username, :encrypted_password, :highest_completed_education )
  end

  def delete
  end
end
