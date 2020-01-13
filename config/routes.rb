Rails.application.routes.draw do
  get 'messages/index'

  devise_for :users
  get 'messages/index'
  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
