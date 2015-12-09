class ProtectedController < ApplicationController
	before_action :require_login

	def require_login
		if !session[:user_id]
			redirect_to login_path, :flash => { :login => "User not logged in" }
		end
	end
end
