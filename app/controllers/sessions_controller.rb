class SessionsController < ApplicationController

  def new
    # default: render 'new' template
  end

  # Gives the user a session token during the login process and returns to user they have logged into app
  def create
    @user = User.find_by(params[:user_id], params[:email])
    if @user
      session[:session_token] = @user.session_token
      redirect_to movies_path
      flash[:notice] = "Logged in!"
    else
      redirect_to login_path
      flash[:notice] = "User does not exist"
    end
  end

  # Destroys the session token for user id at logout and returns to user that they have logged out of app
  def destroy
    session[:user_id] = nil
    redirect_to movies_path
    flash[:notice] = "Logged out!"
    reset_session
  end

end
