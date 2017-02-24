Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "houses#index"
  resources :houses, only: [:index, :show, :new, :create]
  resources :vassals, only: [:index, :show, :new, :create]
  resources :characters, only: [:index, :show, :new, :create]
end
