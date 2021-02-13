Rails.application.routes.draw do

  get "/users", to: "users#index"
  

  get "/dishes", to:"dishes#index"



  get "/ingredients", to:"ingredients#index"



  get "/dish_ingredients", to:"dish_ingredients#index"
  get "/dish_ingredients/:id", to:"dish_ingredients#show"
  # resources :dish_ingredients
  # resources :user_dishes
  # resources :ingredients
  # resources :dishes
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
