Rails.application.routes.draw do
  resources :tasks
  resources :projects
  resources :accounts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
