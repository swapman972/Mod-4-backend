Rails.application.routes.draw do
  resources :dislikes
  resources :likes
  resources :comments
  resources :topics
  resources :groups
  resources :users

  post "/login", to: "auth#create"
  get "/profile", to: "users#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
