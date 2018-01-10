Rails.application.routes.draw do



	devise_for :users

	devise_scope :user do 

		get 'login', to: 'devise/sessions#new'
		get 'register', to: 'devise/registrations#new'
		get 'edit', to: 'devise/registrations#edit'

	end

	namespace :admin do 
		get 'welcome', to: 'home#welcome' 
	end 
	
 	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
 	# web usuario 
 	root 'home#index'
 end
