Rails.application.routes.draw do
  get 'users/info'
  resources :products
  resources :registrations, only: [:create]
  resources :sessions, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
