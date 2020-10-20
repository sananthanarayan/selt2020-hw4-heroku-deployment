class User < ActiveRecord::Base

  # Validates the user id and email
  validates :user_id, uniqueness: true, allow_blank: false, presence: true
  validates :email, presence: true, allow_blank: false

  # Function adds session token to parameters before putting the user id, email, and session token into the user database
  def self.create_user(params)
    params[:session_token] = SecureRandom.base64
    User.create!(params)
  end

end
