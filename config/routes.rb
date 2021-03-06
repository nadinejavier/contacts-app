Rails.application.routes.draw do
  get "/contacts" => "contacts#index"

  get "/contacts/new" => "contacts#new"
  post "/contacts/create" => "contacts#create"

  get "/contacts/:id" => "contacts#show"

  get "/contacts/:id/edit" => "contacts#edit"
  patch "/contacts/:id" => "contacts#update"

  delete "/contacts/:id" => "contacts#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"
  
end