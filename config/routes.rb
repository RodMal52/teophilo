Rails.application.routes.draw do
  resources :tiras
  authenticated :user do
  	root :to => "tiras#index", :as => "dashboard"  
  	
  end

  root :to => 'home#index'

  get 'teo', :to => 'home#teo'
  get 'colabora', :to => 'home#colabora'
  get 'tienda', :to => 'home#tienda'
   get 'etica', :to => 'home#etica'

  devise_for :users, path: "/", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }


end
