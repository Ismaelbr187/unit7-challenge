Rails.application.routes.draw do
  get 'apartments/new'
  get 'apartments/create'
  get 'apartments/index'
  get 'apartments/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :apartments
end
