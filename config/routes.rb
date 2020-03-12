Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'static_pages#home'
  get '/login', to: 'sessions#new'
  get 'product/page'
  get '/signup', to: 'users#new'
  get 'product/create'
  get 'static_pages/home'
  get 'static_pages/help', to: 'static_pages#help'
  get 'static_pages/about'
  get 'static_pages/contact'
  post 'product/create'
  post '/login',  to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  get  '*path' , to: 'application#found'
end
