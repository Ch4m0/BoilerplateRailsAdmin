Rails.application.routes.draw do


	namespace :admin do 
		get 'welcome', to: 'home#welcome' 
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end