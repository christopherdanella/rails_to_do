Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users'  => 'users#create'

  get '/task' => 'tasks#new'
  post '/task' => 'tasks#create'
  get '/task/:id' => 'tasks#show'
end
