Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  ### USERS ROUTES ###
  post "/users" => "users#create"
  
  ### SESSIONS ROUTES ###
  post "/sessions" => "sessions#create"
  
  ### MOVIES ROUTES ###
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"


  ### WATCH_LISTS ROUTES
  get "/lists" => "lists#index"
  post "/lists" => "lists#create"
  patch "/lists/:id" => "lists#update"

  ### LOVEDIT ROUTES
  get "/lovedits" => "lovedits#index"
  get "/lovedits/:id" => "lovedits#show"
  post "/lovedits" => "lovedits#create"
end
