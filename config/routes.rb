Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :posts

  root "posts#index"
end
