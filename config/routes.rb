Rails.application.routes.draw do
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get :add, to: "home#add"
  resources :points
  get :get_csv, to: "home#get_csv"
end
