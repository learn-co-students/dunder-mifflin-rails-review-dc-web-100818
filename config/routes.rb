Rails.application.routes.draw do
  resources :dogs, only: [:index, :show, :new, :create, :edit, :update]
  resources :employees, :except => :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
