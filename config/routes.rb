Rails.application.routes.draw do
  get 'sessions/new'
  post '/login', to: 'sessions#create'
  namespace :admin do
   resources :users
  end
  
  root to: 'books#index'
  resources :books
end
