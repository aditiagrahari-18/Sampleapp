class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Congratulations! login Successfully"
      log_in user
      redirect_to user
      # redirect_to user_path
    else
      flash[:danger] = "Sorry, Login failed"
      render 'new'
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end
end
