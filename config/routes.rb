Rails.application.routes.draw do

  # get 'sessions/new'

  # namespace :webpay do
  #   resources :oneclick
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :pay do
    resources :webpay
  end

  resources :ordenes
  get 'help', to: 'help#index'
  # post '/medios', to: 'ordenes#create'
  # get '/medios/', to: 'ordenes#show'
  get    '/login',   to: 'sessions#new'
  root 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/signup',  to: 'usuarios#new'
  resources :usuarios
  resources :productos
end
