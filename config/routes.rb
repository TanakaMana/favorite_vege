Rails.application.routes.draw do
  devise_for :users
  root 'veges#index'
  resources :veges do
    resources :menus, only: [:create]
  end
  resources :users, only: [:show]
end
