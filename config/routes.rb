Rails.application.routes.draw do

  devise_for :users

  root to: "users#index"
  resources :recipes

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
