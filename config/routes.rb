Recime::Application.routes.draw do
  get "ingredients/new"

  get "ingredients/show"

  get "ingredients/create"

  resources :recipes
end
