class UsersController < ApplicationController

  # the form information passed into parameters variable correctly, only parameters we care about are user id and email
  def user_params
    params.require(:user).permit(:user_id, :email)
  end

  def new
    # default: render 'new' template
  end

  # Creates the user controller so login and sign up are properly linked to right paths as well as new signups are put
  # into the database
  def create
    # The user inputs are saving the params variable but user is making the content nil
    @user = User.create_user(user_params)
    flash[:notice] = "Hello #{user.user_id} was successfully created."
    redirect_to login_path

    rescue ActiveRecord::RecordInvalid
      flash[:notice] = "User id has been taken. Try another one."
      redirect_to new_user_path
  end

end
