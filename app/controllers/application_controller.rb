class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  def current_user

    @current_user ||= User.find_by_steam_nickname session[:current_user][:nickname] if session[:current_user][:nickname]
  end

end
