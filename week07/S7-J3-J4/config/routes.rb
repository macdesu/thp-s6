Rails.application.routes.draw do
  root 'statics#home'
  get '/depute',to: 'statics#home_depute'
  get '/student',to: 'statics#home_student'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
