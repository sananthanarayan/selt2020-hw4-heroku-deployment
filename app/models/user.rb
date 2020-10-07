class User < ActiveRecord::Base

  validates :user_id, uniqueness: true, allow_blank: false, presence: true
  validates :email, presence: true, allow_blank: false

  def create_user(params)
    params[:session_token] = SecureRandom.base64(64)
    ActiveRecord.create!(params)
  end

end
