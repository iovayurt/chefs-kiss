Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :chefs, only: [ :index, :show, :new, :create, :destroy ] do
    resources :bookings, only: [ :create, :new ]
  end
  resources :bookings, only: [:destroy]
  resource :dashboard, only: [:show]
end
