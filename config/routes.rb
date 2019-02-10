Rails.application.routes.draw do
  resources :tasks, :employees, :particulars, :bills, :users

  root 'employees#index'
  get '/signup', to: 'users#new', as: :signup
  post '/signup', to: 'users#create'

get 'employee/task/:id', to: 'employees#employee_tasks'
  get 'employee/task/new/:id', to: 'employees#employee_new_task'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
