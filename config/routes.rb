Rails.application.routes.draw do
  resources :employees
  resources :particulars
  resources :bills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
