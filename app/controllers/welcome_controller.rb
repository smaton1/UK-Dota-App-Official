# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  # auth callback POST comes from Steam so we can't attach CSRF token
  skip_before_filter :verify_authenticity_token, :only => :auth_callback


  def auth_callback
    auth = request.env['omniauth.auth']
    
    session[:current_user] = { :nickname => auth.info['nickname'],
    :image => auth.info['image'],
    :uid => auth.uid }

    @user = User.find_for_steam_oauth(request.env['omniauth.auth'], session[:current_user])


    redirect_to root_url
  end
end