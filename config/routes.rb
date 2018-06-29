# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tests
  resources :recipes
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]
  resources :recipes, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  # post '/recipes' => 'recipes#create'
  # patch '/recipes/:id' => 'recipes#update'
end
