Rails.application.routes.draw do
  devise_for :users
  resources :domains
  resources :clients
  resources :users
  get 'domain_mailer/expire_soon', to: 'domain_mailer#expire_soon'
  root to: "pages#index"
end
