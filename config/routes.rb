Rails.application.routes.draw do
  root to: 'home#index'

  resources :movies do
      patch :publish, on: :member
  end
  resources :genres
  resources :directors
end
