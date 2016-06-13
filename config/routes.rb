Rails.application.routes.draw do
  devise_for :users
  resources :domains do 
    collection {post :import}
  end
  resources :clients
  resources :users
  root to: "pages#index"
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
end
