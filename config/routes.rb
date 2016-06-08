Rails.application.routes.draw do
  resources :domains
  resources :clients
  get 'domain_mailer/expire_soon', to: 'domain_mailer#expire_soon'
  root to: "domains#index"
end
