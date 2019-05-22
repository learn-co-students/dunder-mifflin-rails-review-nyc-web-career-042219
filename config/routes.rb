Rails.application.routes.draw do
  resources :dogs
  # resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/employees', to: 'employees#index'
  get '/employees/new', to: 'employees#new'
  post '/employees', to: 'employees#create'
  get 'employees/:id', to: 'employees#show', as: 'employee'
  get 'employees/:id/edit', to: 'employees#edit', as: 'edit_employee'
  patch 'employees/:id', to: 'employees#update'
end
