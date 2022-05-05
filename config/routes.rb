Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/test", to:"home#index"
  # root "posts#index"

  # get "posts/:id", to:"posts#show"
  # resources :posts, only: [:show, :index, :create]
  resources :posts  
end
