class SessionsController < ApplicationController

  def new
    # default: render 'new' template
  end

  def create
    # @user = UsersController.authenticate(params[:user_id], params[:email])
    @user = User.find_by_user_id(params[:user_id])
    if @user
      session[:user_id] = user_id
      redirect_to movies_path
      flash[:notice] = "Logged in!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to movies_path
    flash[:notice] = "Logged out!"
    reset_session
  end

end
