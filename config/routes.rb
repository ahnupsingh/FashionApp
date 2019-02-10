Rails.application.routes.draw do
  get 'users/new'
  resources :tasks
  root 'employees#index'
  resources :employees
  resources :particulars
  resources :bills
  resources :users

  get 'employee/task/:id', to: 'employees#employee_tasks'
  get 'employee/task/new/:id', to: 'employees#employee_new_task'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
