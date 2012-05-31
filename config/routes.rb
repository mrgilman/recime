Recime::Application.routes.draw do

  get "home/index"

  match "/" => "home#index"

  get "sessions/new"

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"

  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users
  resources :sessions
  resources :friendships

  get "ingredients/new"

  get "ingredients/show"

  get "ingredients/create"

  resources :recipes
end
