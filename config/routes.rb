Rails.application.routes.draw do
  resources :registro_srvs
  resources :registro_aaaas
  resources :registro_txts
  resources :registro_mxes
  resources :registro_cnames
  resources :registro_as
  resources :dominios
  root :to => 'home#index'
  get '/products', :to => 'products#index'
  mount ShopifyApp::Engine, at: '/'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
