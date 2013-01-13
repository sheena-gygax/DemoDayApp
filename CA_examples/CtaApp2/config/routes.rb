CtaApp::Application.routes.draw do

  
  get "lines", :controller => "lines", :action => "index", :as => :train_lines
  post "lines", :controller => "lines", :action => "create", :as => :train_lines
  
  get "lines/new", :controller => "lines", :action => "new", :as => :new_train_line
  get "lines/:id/edit", :controller => "lines", :action => "edit", :as => :edit_train_line
  
  get "lines/:id", :controller => "lines", :action => "show", :as => :train_line
  put "lines/:id", :controller => "lines", :action => "update", :as => :train_line
  delete "lines/:id", :controller => "lines", :action => "destroy", :as => :train_line

end
