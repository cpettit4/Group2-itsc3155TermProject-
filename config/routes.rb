Rails.application.routes.draw do
  
  get 'dashboard/index'
  get 'welcome/index'
  
  resources :images
  resources :schedules
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  
  #change images to welcome
  root 'welcome#base'
  

end
