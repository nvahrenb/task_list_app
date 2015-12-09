class ProtectedController < ApplicationController
	before_action :require_login

	def require_login
		if session[:user_id].nil?
			flash[:message] = "User not logged in"
			redirect_to login_path
		end
	end
end
