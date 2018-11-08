Rails.application.routes.draw do

  devise_for :users, path: 'auth', module: "auth"

  get '/admin', to: 'admin#index'
  namespace :admin do
    resources :personas, :paises, :productos
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
