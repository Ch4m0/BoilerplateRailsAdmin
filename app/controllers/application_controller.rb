class ApplicationController < ActionController::Base
	
	include Pundit
	protect_from_forgery with: :exception
	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

	def after_sign_in_path_for(resource)
		"/"
	end

	def user_not_authorized
		flash[:alert] = "You are not cool enough to do this - go back from whence you came."
		redirect_to("/")
	end
end
