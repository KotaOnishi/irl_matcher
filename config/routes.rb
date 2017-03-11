Rails.application.routes.draw do
  devise_for :users
  resources :top
  resources :matchings
  get 'users/:id' =>'users#mypage'
  # get '/request' =>'top#request'
  root to: "top#index"
end