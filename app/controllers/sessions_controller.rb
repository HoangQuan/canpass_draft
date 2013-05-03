class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Welcome to Canpass"
      sign_in user
      redirect_to user
    else
      flash[:error] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
    sign_out
  end
end