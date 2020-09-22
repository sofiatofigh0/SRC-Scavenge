Rails.application.routes.draw do
  resources :users
  resources :user_resources
  resources :user_courses
  resources :resources
  resources :topics
  resources :courses
  resources :schools
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  post '/login', to: 'users#login'
  post '/users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
