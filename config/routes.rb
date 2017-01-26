Rails.application.routes.draw do
  root to: "departments#list"
  get '/departments', to: 'departments#list'
  get '/departments/new', to: 'departments#new'
  post '/departments', to:'departments#create'
  get '/doctors', to: 'doctors#list'
  get '/doctors/new', to: 'doctors#new'
  post '/doctors', to:'doctors#create'

  get '/appointments', to: 'appointments#list'

end
