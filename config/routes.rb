Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "computer_stores#index"

  get "/computerstores", to: "computer_stores#index"
end
