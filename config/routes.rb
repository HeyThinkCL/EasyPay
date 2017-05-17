Rails.application.routes.draw do
  namespace :webpay do
    resources :oneclick
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :checkout


  namespace :pay do
    resources :webpay
  end

  get '/'  => 'pay/inicio#index'
  post '/'  => 'pay/inicio#create'


end
