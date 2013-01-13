ProfileApp::Application.routes.draw do
  
  get "signin"  => "sessions#new", as: :signin

  post "sessions" => "sessions#create"

  get "signout" => "sessions#destroy", as: :signout

  root :to => "pages#index"
  
  get "signup" => "users#new", as: :signup
  post "users" => "users#create"
  get 'profile/:id' =>  "users#show", as: :profile
  
 end
