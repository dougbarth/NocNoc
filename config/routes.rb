ActionController::Routing::Routes.draw do |map|
  map.root :controller => "dashboard"

  map.resources :panels

  map.refresh '/refresh', :controller => "dashboard", :action => "refresh"
end
