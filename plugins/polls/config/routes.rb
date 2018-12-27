# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
resources :polls do
	member do
		post :vote
	end
end