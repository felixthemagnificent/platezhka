Rails.application.routes.draw do
  get '/price', to: 'paymenttypes#price'
  resources :paymenttypes

  root to: 'visitors#index'
  devise_for :users
  resources :users do
    resources :payments
  end
end
