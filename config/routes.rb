Rails.application.routes.draw do
  resources :matches
  resources :match_requests
  resources :unmatches
  resources :users
  resources :exercise_times
  resources :diets
  resources :locations
  resources :music_preferences
  resources :gender_preferences
  resources :exercise_disciplines
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
