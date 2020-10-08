class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:user_id, :email)
  end

  def new
    # default: render 'new' template
  end

  def create
    user = User.create_user(user_params)
    flash[:notice] = "Hello #{user.user_id} was successfully created."
    redirect_to login_path

    rescue ActiveRecord::RecordInvalid
      flash[:notice] = "User id has been taken. Try another one."
      redirect_to new_user_path
  end

end

