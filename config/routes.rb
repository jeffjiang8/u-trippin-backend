Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :items
      resources :trips
      resources :users
      resources :flights
      post "/get_flights", to: "flights#get_flights" 
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
