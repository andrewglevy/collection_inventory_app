Rails.application.routes.draw do
  devise_for :users
  resources :collections
  root 'collections#index'
end
