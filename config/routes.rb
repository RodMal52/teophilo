Rails.application.routes.draw do
  root :to => 'home#index'


  devise_for :users, path: "/", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }
end
