Rails.application.routes.draw do
  get "dogs/index_by_employee_amount", to: "dogs#index_by_employee_amount", as: "custom_dogs"
  resources :dogs
  resources :employees
end
