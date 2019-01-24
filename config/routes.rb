Rails.application.routes.draw do
  get 'sessions/new'
  resources :tasks  # new create show delete edit update tasks

  resources :goals   # new create show delete edit update goals
  resources :users

get '/', to: 'sessions#new'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
get '/signup', to: 'users#new'
delete '/logout', to: 'sessions#destroy'

end

# Not needed:
# resources :goal_categories
# resources :categories
