Rails.application.routes.draw do
  root 'employees#index'

  resources :tasks, :employees, :particulars, :bills, :users

  get '/signup', to: 'users#new', as: :signup
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'employee/task/:id', to: 'employees#employee_tasks'
  get 'employee/task/new/:id', to: 'employees#employee_new_task'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
