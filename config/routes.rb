Rails.application.routes.draw do
  get 'sessions/new'
  post '/login', to: 'sessions#create'
  delete '/logout' , to: 'session#destroy'
  namespace :admin do
   resources :users
  end
  
  root to: 'books#index'
  resources :books
end
