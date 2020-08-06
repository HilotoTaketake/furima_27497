Rails.application.routes.draw do
  root to: "items#index"

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  
  
  resources :users, only: [:index, :show]
  resources :items
  resources :purchases, only:[:index, :create]
  get '/items/:id', to: 'items#index', as: :index_item
  get '/items/:id', to: 'items#show', as: :show_item
  patch '/items/:id', to: 'items#update', as: :update_item
  delete '/items/:id', to: 'items#destroy', as: :destroy_item
  get '/purchases/:id', to: 'purchases#index', as: :index_purchase
  post '/purchases/:id', to: 'purchases#create', as: :create_purchase
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
