Rails.application.routes.draw do
  get 'sessions/new'
  resources :tasks
  resources :goal_categories
  resources :categories
  resources :goals
  resources :users

get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'

get '/signup', to: 'users#new'



end
