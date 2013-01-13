IceCreamApp::Application.routes.draw do

  # http://localhost:3000/flavors
  
  get "flavors", :controller => "flavors", :action => "index"
  get "flavors/new", :controller => 'flavors', :action => "new"
  
  # http://localhost:3000/flavors/create
  post "flavors/create", :controller => 'flavors', :action => 'create'
  
end
