Rails.application.routes.draw do
  devise_for :students
  resources :top
  get 'mypage' => 'top#mypage'
  root to: "top#index"
end