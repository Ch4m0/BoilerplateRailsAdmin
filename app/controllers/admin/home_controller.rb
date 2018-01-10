class Admin::HomeController < ApplicationController


	layout 'admin_layout'

	def welcome
		
		authorize self
		
	end

end
