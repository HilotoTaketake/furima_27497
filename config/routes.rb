Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "items#index"
  resources :users, only: [:index, :show]
  resources :items
  resources :transactions, only:[:index, :create]
  get '/items/:id', to: 'items#index', as: :index_item
  get '/items/:id', to: 'items#show', as: :show_item
  patch '/items/:id', to: 'items#update', as: :update_item
  delete '/items/:id', to: 'items#destroy', as: :destroy_item
  get '/transactions/:id', to: 'transactions#index', as: :index_transaction
  post '/transactions/:id', to: 'transactions#create', as: :create_transaction
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
