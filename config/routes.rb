Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  ### USERS ROUTES ###
  post "/users" => "users#create"
  
  ### SESSIONS ROUTES ###
  post "/sessions" => "sessions#create"
  
  ### MOVIES ROUTES ###
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  patch "/movies" => "movies#update"

  ### WATCH_LISTS ROUTES
  post "/watch_lists" => "watch_lists#create"
end
