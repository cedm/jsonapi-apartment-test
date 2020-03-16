Rails.application.routes.draw do
  resources :posts
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    jsonapi_resource :account
    jsonapi_resources :posts
  end
end
