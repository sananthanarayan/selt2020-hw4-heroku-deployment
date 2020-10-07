class User < ActiveRecord::Base
  def User.create_new_user(params)
    params[:session_token] = SecureRandom.base64(64)
    User.create!(params)
  end

end
