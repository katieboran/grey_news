Rails.application.routes.draw do
  # Routes for the Bias_rating resource:
  # CREATE
  get "/bias_ratings/new", :controller => "bias_ratings", :action => "new"
  post "/create_bias_rating", :controller => "bias_ratings", :action => "create"

  # READ
  get "/bias_ratings", :controller => "bias_ratings", :action => "index"
  get "/bias_ratings/:id", :controller => "bias_ratings", :action => "show"

  # UPDATE
  get "/bias_ratings/:id/edit", :controller => "bias_ratings", :action => "edit"
  post "/update_bias_rating/:id", :controller => "bias_ratings", :action => "update"

  # DELETE
  get "/delete_bias_rating/:id", :controller => "bias_ratings", :action => "destroy"
  #------------------------------

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
