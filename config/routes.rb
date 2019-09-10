Rails.application.routes.draw do
  resources :roasts
  resources :items
  devise_for :users
  # get 'home/index'
  root 'home#index'
  get 'home/brewing'
  get 'home/roasting'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
