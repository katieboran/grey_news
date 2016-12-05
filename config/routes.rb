Rails.application.routes.draw do
  root :to => "news_sources#index"
  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Report resource:
  # CREATE
  get "/reports/new", :controller => "reports", :action => "new"
  post "/create_report", :controller => "reports", :action => "create"

  # READ
  get "/reports", :controller => "reports", :action => "index"
  get "/reports/:id", :controller => "reports", :action => "show"

  # UPDATE
  get "/reports/:id/edit", :controller => "reports", :action => "edit"
  post "/update_report/:id", :controller => "reports", :action => "update"

  # DELETE
  get "/delete_report/:id", :controller => "reports", :action => "destroy"
  #------------------------------

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
