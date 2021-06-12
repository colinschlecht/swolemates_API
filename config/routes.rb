Rails.application.routes.draw do
  resources :gender_preferences
  resources :unmatches
  resources :matches
  resources :match_requests
  resources :users
  resources :music_preferences
  resources :locations
  resources :diets
  resources :exercise_focus
  resources :exercise_times
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
