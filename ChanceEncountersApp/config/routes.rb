ChanceEncountersApp::Application.routes.draw do
  get 'missed_connections', :controller  => 'encounters', :action  => 'index', :as  => :encounters
  get 'missed_connections/new', :controller => 'encounters', :action  =>  'new', :as => :new_encounter
  post 'missed_connections', :controller  => 'encounters', :action  => 'create', :as => :encounters
  get 'missed_connections/:id', :controller  => 'encounters', :action  => 'show', :as => :encounter
  get 'missed_connections/:id/edit', :controller  => 'encounters', :action  => 'edit', :as => :edit_encounter
  put 'missed_connections/:id', :controller  => 'encounters', :action => 'update', :as => :encounter
  delete 'missed_connections/:id', :controller  => 'encounters', :action  => 'destroy', :as => :encounter
end
