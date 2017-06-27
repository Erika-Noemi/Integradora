Rails.application.routes.draw do
  resources :events
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :pins
  get 'welcome/index'

  root 'welcome#index'
  get 'mypins' => 'pins#mypins'
  get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinsof"
  get '/users/sign_out'
end
