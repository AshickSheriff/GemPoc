Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :edit, :update]
  root "home#index"
end
