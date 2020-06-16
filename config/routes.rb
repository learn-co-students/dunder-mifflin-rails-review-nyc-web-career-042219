Rails.application.routes.draw do

  root 'dogs#index'
  get '/dogs/sort', to: 'dogs#sort'
  resources :dogs, only: [:index, :show]
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
