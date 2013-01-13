TicketApp::Application.routes.draw do

  get '/home', :controller => 'tickets', :action => 'index'
  get '/new', :controller => 'tickets', :action => 'new'
  post '/home', :controller => 'tickets', :action => 'create'
  get '/:id', :controller => 'tickets', :action => 'show'
  get '/:id/edit', :controller => 'tickets', :action => 'edit'
  put '/:id', :controller => 'tickets', :action => 'update'
  delete '/:id', :controller => 'tickets', :action => 'destroy'
  
end
