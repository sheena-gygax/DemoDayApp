LoginApp::Application.routes.draw do

  root :to  => "users#index"
  
  # get "/users"  =>  "users#new"
  
  resources :users
  
  get '/signup', :to => 'users#new'
  get '/signin', :to => 'sessions#new'
  get '/signout', :to =>  'sessions#destroy', as: :sign_out
  post 'sessions/create'
  
  
  end
