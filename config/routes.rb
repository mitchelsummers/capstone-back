Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  get "/user" => "users#home"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  post "/sessions" => "sessions#create"

  get "/courses" => "courses#index"
  get "/courses/:id" => "courses#show"
  post "/courses" => "courses#create"
  patch "/courses/:id" => "courses#update"
  delete "courses/:id" => "courses#destroy"

  get "/cards" => "cards#index"
  get "/coursecards/:id" => "cards#course_index"
  get "/usercards" => "cards#user_index"
  get "/cards/:id" => "cards#show"
  post "/cards" => "cards#create"
  patch "/cards/:id" => "cards#update"
  delete "cards/:id" => "cards#destroy"

  get "/players" => "players#index"
  get "/cardplayers/:id" => "players#card_index"
  get "/players/:id" => "players#show"
  post "/players" => "players#create"
  patch "/players/:id" => "players#update"
  delete "players/:id" => "players#destroy"
end
