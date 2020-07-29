Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "users#index"
  resources :users, only: [:index, :show]
  resources :items
  get '/items/:id', to: 'items#show', as: :show_item
  patch '/items/:id', to: 'items#update', as: :update_item
  delete '/items/:id', to: 'items#destroy', as: :destroy_item
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
