Rails.application.routes.draw do
  resources :comments
  resources :roasts
  resources :items
  devise_for :users
  # get 'home/index'
  root 'home#index'
  get 'tasting' => 'home#tasting'
  get "brewing" => 'home#brewing'
  get "hario" => 'home#hario'
  get "stovetop" => 'home#stovetop'
  get "aeropress" => 'home#aeropress'
  get "french_press" => 'home#french_press'
  get "delter_press" => 'home#delter_press'
  get "chemex" => 'home#chemex'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
