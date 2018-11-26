Rails.application.routes.draw do
  root "home#index"
  get "home/search", to: "home#search"
  post "home/search", to: "home#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
