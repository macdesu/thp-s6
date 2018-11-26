Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#list"
  get "/user/create", to: "users#create"
  post "/user/create", to: "users#create"
end