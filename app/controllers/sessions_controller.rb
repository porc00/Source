class SessionsController < ApplicationController
  def create
    Rails.logger.info "\n====================================\n"
    Rails.logger.info "\n#{env["omniauth.auth"]}\n"
    Rails.logger.info "\n====================================\n"
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to '/'
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end