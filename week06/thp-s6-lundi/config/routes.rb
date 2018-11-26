Rails.application.routes.draw do
	root "static_pages#index"
	resources "users"
	get "/sessions/", to: "sessions#new"
	post "/sessions/", to: "sessions#create"
	get "/sessions/disconnect", to: "sessions#destroy"
end