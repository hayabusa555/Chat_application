Rails.application.routes.draw do
  root 'comments#index'
  get 'comments/index'
  devise_for :users
  resources :books
  mount ActionCable.server => '/cable'
end
