class SessionsController < ApplicationController

  def new
  end

  def create #for logging the user in
    session[:email] = params[:session][:email]
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id]= @user.id
      redirect_to @user
    else
      redirect_to new_user_path
    end
  end

  def destroy
    session.delete :email
    redirect_to login_path
  end

  

end
