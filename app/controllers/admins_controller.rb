class AdminsController < ApplicationController
  def index
    

    if session[:admin_id]
      flash[:notice]= "Success in logging in"

    redirect_to "edit"
    else 
      flash.now.alert = "Wrong Username and or Password"
      render :index
    end
  end

  def sign_in
  @admin = Admin.find_by(username: params[:session][:username])
    
    if
      session[:admin_id]
      flash[:notice] = 'Successfully logged in!'

      redirect_to "admin_profile"
    
    else
      flash.now.alert = "Incorrect password, try again."
      render "edit"
    end

  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.create(admin_params)
    session[:admin_id]
    redirect_to "admin_profile"
  end

  def edit
    @admin = Admin.find(admin_params)
  end

  def update
    @admin = Admin.update(admin_params)
  end

  def admin_params
    params.require( :admin ).permit(:first_name, :last_name, :username, :encrypted_password )
  end

  def delete
  end
end