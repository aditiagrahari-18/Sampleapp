Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  get 'product/page'
  get 'product/price'
  get 'static_pages/home'
  get 'static_pages/help', to: 'static_pages#help'
  get 'static_pages/about'
  get 'static_pages/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#sampleapp'


end
