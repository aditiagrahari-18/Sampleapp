Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  get 'product/page'
  # get 'product/price'
  get 'product/create'
  post 'product/create'
  get '/signup', to: 'users#new'
  # get  'login', to: 'users#login'
  post '/login',  to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'
  resources :users
  # post '/signup', to:'users#create'
  get 'static_pages/home'
  get 'static_pages/help', to: 'static_pages#help'
  get 'static_pages/about'
  get 'static_pages/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get  '*path' , to: 'application#found'

end
