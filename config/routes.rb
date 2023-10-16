Rails.application.routes.draw do
  root to: 'home#index'

  resources :movies [:show, :new, :create :edit, :update]
  resources :genders [:show, :new, :create :edit, :update]
  resources :directors [:show, :new, :create :edit, :update]
end
