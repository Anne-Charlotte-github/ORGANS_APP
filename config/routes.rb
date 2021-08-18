Rails.application.routes.draw do
  devise_for :users
  root to: 'organs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :organs, only: :show do
    resources :bookings, only: %i[create update]
  end
  resources :users, only: :show
end
