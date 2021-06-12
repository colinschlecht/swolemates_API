Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root 'welcome#index'
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
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login'
      get '/profile', to: 'users#profile'
      get '/home', to: 'posts#home'
    end
  end
end
