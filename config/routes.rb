Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  get 'comments/new'
  resources :days
  resources :places
  get 'workplaces/index'
  get 'workplaces/new'
  resources :comments, only: :create
  post 'days/:id' => 'days#show'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
