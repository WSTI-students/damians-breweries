Rails.application.routes.draw do

  devise_for :users
  
  root to: "users#index"
  resources :recipes

  get '/ingredients/all', to: "ingredients#get_all_and_return_json"
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
