Rails.application.routes.draw do
  root to: 'home#index'

  resources :movies, only: [:show, :new, :create, :edit, :update] do
      patch :publish, on: :member
  end
  resources :genders, only:  [:show, :new, :create, :edit, :update]
  resources :directors, only:  [:show, :new, :create, :edit, :update]
end
