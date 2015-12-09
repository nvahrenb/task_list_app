class LoginController < ApplicationController
  def index
  end

  def authenticate
  	user = User.find_by_username(params[:username])
  	user2 = User.find_by_password(params[:password])
  	if user == user2 && !user.nil?
  		session[:user_id] = user.id
  		flash[:message] = "Logged in"
  		redirect_to root_url
  	else
  		flash[:message] = "Username/password not found"
  		redirect_to :back
  	end
  end

  def logout
  	session[:user_id] = nil
  	redirect_to login_path
  end
end
