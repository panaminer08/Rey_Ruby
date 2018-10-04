class ProfileController < ApplicationController
  def index
  end

  def create
    user = User.create(
      username: params[:username],
      firstname: params[:firstname],
      lastname: params[:lastname],
      password: params[:password],
      birthday: params[:birthday],
      email: params[:email]
  )

  end

  def update
  end
end
