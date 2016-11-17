Rails.application.routes.draw do
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

  # Routes for the Criterium resource:
  # CREATE
  get "/criteria/new", :controller => "criteria", :action => "new"
  post "/create_criterium", :controller => "criteria", :action => "create"

  # READ
  get "/criteria", :controller => "criteria", :action => "index"
  get "/criteria/:id", :controller => "criteria", :action => "show"

  # UPDATE
  get "/criteria/:id/edit", :controller => "criteria", :action => "edit"
  post "/update_criterium/:id", :controller => "criteria", :action => "update"

  # DELETE
  get "/delete_criterium/:id", :controller => "criteria", :action => "destroy"
  #------------------------------

  # Routes for the Response resource:
  # CREATE
  get "/responses/new", :controller => "responses", :action => "new"
  post "/create_response", :controller => "responses", :action => "create"

  # READ
  get "/responses", :controller => "responses", :action => "index"
  get "/responses/:id", :controller => "responses", :action => "show"

  # UPDATE
  get "/responses/:id/edit", :controller => "responses", :action => "edit"
  post "/update_response/:id", :controller => "responses", :action => "update"

  # DELETE
  get "/delete_response/:id", :controller => "responses", :action => "destroy"
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get "/companies/new", :controller => "companies", :action => "new"
  post "/create_company", :controller => "companies", :action => "create"

  # READ
  get "/companies", :controller => "companies", :action => "index"
  get "/companies/:id", :controller => "companies", :action => "show"

  # UPDATE
  get "/companies/:id/edit", :controller => "companies", :action => "edit"
  post "/update_company/:id", :controller => "companies", :action => "update"

  # DELETE
  get "/delete_company/:id", :controller => "companies", :action => "destroy"
  #------------------------------

  # Routes for the Decision resource:
  # CREATE
  get "/decisions/new", :controller => "decisions", :action => "new"
  post "/create_decision", :controller => "decisions", :action => "create"

  # READ
  get "/decisions", :controller => "decisions", :action => "index"
  get "/decisions/:id", :controller => "decisions", :action => "show"

  # UPDATE
  get "/decisions/:id/edit", :controller => "decisions", :action => "edit"
  post "/update_decision/:id", :controller => "decisions", :action => "update"

  # DELETE
  get "/delete_decision/:id", :controller => "decisions", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
