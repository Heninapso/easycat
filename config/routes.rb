Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root 'pages#home'
  resources :cat_sitting_offers, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:update]
  resources :customers, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
