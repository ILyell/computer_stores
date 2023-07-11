Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "computer_stores#index"

  get "/computerstores", to: "computer_stores#index"
  get "/computerstores/:id", to: "computer_stores#show"
  get "/computers", to: "computers#index"
  get "/computers/:id", to: "computers#show"
  get "/computerstores/:computer_store_id/computers", to: "computers_by_store#index"
end
