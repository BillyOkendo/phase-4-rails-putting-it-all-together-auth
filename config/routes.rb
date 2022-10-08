Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:index, :create]

  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"
end
