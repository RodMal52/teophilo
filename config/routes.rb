Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :tiras
  resources :tags, only: [:index, :show]
  authenticated :user do
  	root :to => "tiras#index", :as => "dashboard"  
  	
  end

  root :to => 'home#index'
  post '/', :to => 'home#index'
  get 'teo', :to => 'home#teo'
  get 'nuestras_voces', :to => 'home#voces'
  get 'archivo', :to => 'home#archivo'
  get 'colabora', :to => 'home#colabora'
  get 'tienda', :to => 'home#tienda'
   get 'etica', :to => 'home#etica'
   get 'aviso', :to => 'home#aviso'
   get 'terms', :to => 'home#terms'
   get 'blog', :to => 'home#blog'

  devise_for :users, path: "/", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }


end
