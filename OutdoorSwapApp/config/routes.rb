OutdoorSwapApp::Application.routes.draw do
  get "home", :controller => "all_gear", :action => "index", :as => :gears
  get "home/new", :controller => "all_gear", :action => "new", :as => :new_gear
  post "home", :controller => "all_gear", :action => "create", :as => :gears
  get "home/:id/edit", :controller => "all_gear", :action => "edit", :as => :edit_gear
  put "home/:id/edit", :controller => "all_gear", :action => "update", :as => :gear_item
  get "home/:id", :controller => "all_gear", :action => "show", :as => :gear_item
  delete "home/:id", :controller => "all_gear", :action => "destroy", :as => :gear_item
  end
