class ApplicationController < ActionController::Base
	before_action :get_all_task_lists
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_all_task_lists
  	@all_task_lists = Array.new
  	TaskList.all.each do |item|
  		@all_task_lists.push(item)
  	end
  end

end