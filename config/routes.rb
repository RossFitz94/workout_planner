Rails.application.routes.draw do
  resources :workout_logs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'
    get '/home/account'
    get 'home/workout'
   
# Function to set up all CRUD routes 
  resources :workouts
end
