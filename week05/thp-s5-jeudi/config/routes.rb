Rails.application.routes.draw do
	resources :registration
	root "static_pages#index"
	get "/users", to: "users#index"
	get "/gossips", to: "gossips#index"
	get "/gossips/new", to: "gossips#new"
	post "/gossips/new", to: "gossips#new"
end