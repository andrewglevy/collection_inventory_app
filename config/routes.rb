Rails.application.routes.draw do
  devise_for :users
  resources :collections
  resources :items
  root 'collections#index'
end
