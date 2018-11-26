Rails.application.routes.draw do
	root "welcome#user"
	get "user/:username", to: "welcome#user"
	get "/team", to: "team#index"
	get "/contact", to: "contact#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
