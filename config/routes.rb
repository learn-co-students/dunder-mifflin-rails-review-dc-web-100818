Rails.application.routes.draw do
  root "employees#home"
  root "dogs#home"
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
