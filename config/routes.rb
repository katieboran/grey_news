Rails.application.routes.draw do
  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the News_source resource:
  # CREATE
  get "/news_sources/new", :controller => "news_sources", :action => "new"
  post "/create_news_source", :controller => "news_sources", :action => "create"

  # READ
  get "/news_sources", :controller => "news_sources", :action => "index"
  get "/news_sources/:id", :controller => "news_sources", :action => "show"

  # UPDATE
  get "/news_sources/:id/edit", :controller => "news_sources", :action => "edit"
  post "/update_news_source/:id", :controller => "news_sources", :action => "update"

  # DELETE
  get "/delete_news_source/:id", :controller => "news_sources", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
