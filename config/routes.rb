Rails.application.routes.draw do
  devise_for :users
  resources :dinners
  resources :lunches
  resources :breakfasts
    get "articles/about"
    root "articles#index"
end
