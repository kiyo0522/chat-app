Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "rooms#index" #viewに表示される
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
  resources :messages, only: [:index, :create]
  end
end
