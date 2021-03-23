Rails.application.routes.draw do
  get 'opinions/index'
  get 'opinions/create'
  get 'opinions/destroy'
  get 'opinions/show'
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
