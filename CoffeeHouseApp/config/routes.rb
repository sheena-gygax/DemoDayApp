CoffeeHouseApp::Application.routes.draw do
  root :to  => "menu#index"
  resources :menu
  resources :drink
end
