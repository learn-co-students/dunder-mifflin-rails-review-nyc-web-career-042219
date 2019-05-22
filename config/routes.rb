Rails.application.routes.draw do

  resources :dogs
  delete '/dogs/:id', to: "dogs#destroy", as: "destroydog"


  resources :employees
  delete '/employees/:id', to: "employee#destroy", as: "destroyemployee"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
