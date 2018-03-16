Rails.application.routes.draw do

  devise_for :users
  root to: "users#index"
  get '/recipes', to: proc { |e| [200, {}, ["ok"]]}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
