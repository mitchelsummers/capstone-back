Rails.application.routes.draw do
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  post "/sessions" => "sessions#create"

  get "/courses" => "courses#index"
  get "/courses/:id" => "courses#show"
  post "/courses" => "courses#create"
  patch "/courses/:id" => "courses#update"
  delete "courses/:id" => "courses#destroy"

  get "/cards" => "cards#index"
  get "/cards/:id" => "cards#show"
  post "/cards" => "cards#create"
  patch "/cards/:id" => "cards#update"
  delete "cards/:id" => "cards#destroy"

  get "/players" => "players#index"
  get "/players/:id" => "players#show"
  post "/players" => "players#create"
  patch "/players/:id" => "players#update"
  delete "players/:id" => "players#destroy"
end
