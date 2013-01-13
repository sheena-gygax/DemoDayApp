VeloDesk2::Application.routes.draw do
  
  root :to => "welcomes#index"
  
  # resources :bikes
  get '/bikes' => "bikes#index", as: :bikes
  get '/bikes/request'  =>  "bikes#new", as: :new_bike
  post '/bikes'  => "bikes#create", as: :bikes
  get '/bike/:id'  =>  "bikes#show", as: :bike
  get '/bike/:id/edit'  =>  "bikes#edit", as: :edit_bike
  put '/bike/:id'  =>  "bikes#update", as: :bike
  delete 'bike/:id' => "bikes#destroy", as: :bike
  
  end
