# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
resources :projects, only:[] do
	resources :polls do
		member do
			post :vote
		end
	end
end