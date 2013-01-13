IcecreamApp2::Application.routes.draw do
 get "flavors", :controller => "flavors", :action => "index"
 get "flavors/new", :controller => "flavors", :action => "new"
 post "flavors/create", :controller => "flavors", :action => "create"
end
