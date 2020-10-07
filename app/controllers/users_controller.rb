class UsersController < ApplicationController

  def user_params
    params.requires(:user).permit(:user_id, :email)
  end

  def create
    if User.find_by_user_id(user_params)
      redirect_to movies_path
    else
      @user = User.create!(user_params)
      flash[:notice] = "#{@user.id} was successfully created."
      redirect_to movies_path
    end

  end


end
