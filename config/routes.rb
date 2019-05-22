Rails.application.routes.draw do
  get "/sort", to: "dogs#sort", as: "sorted_index"
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
