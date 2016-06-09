Rails.application.routes.draw do
  devise_for :users
  resources :domains
  resources :clients
  resources :users
  root to: "pages#index"
end
