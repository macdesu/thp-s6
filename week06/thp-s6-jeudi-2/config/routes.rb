Rails.application.routes.draw do
	root "movies#index"
	get "/search", to: "movies#search"
	post "/", to: "movies#search"
	# get 'movies/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
