Rails.application.routes.draw do
  devise_for :users
  root 'workplaces#index'
  get 'comments/new'
  get 'days/index'
  get 'days/new'
  get 'workplaces/index'
  get 'workplaces/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
