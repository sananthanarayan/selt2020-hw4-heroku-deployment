class SessionsController < ApplicationController

  def new
    # default: render 'new' template
  end

  def create
    @user = UsersController.authenticate(params[:user_id], params[:email])
    if @user
      session[:user_id] = user_id
      redirect_to root_url, :notice => "Logged in!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
