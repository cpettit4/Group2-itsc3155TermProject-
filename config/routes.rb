Rails.application.routes.draw do
  resources :images
  get 'welcome/index'
  get 'welcome/login'
  
  
  
  resources :schedules
  resources :users
<<<<<<< HEAD
  
  root 'welcome#index'
=======
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  #change images to welcome
  root 'welcome#base'
>>>>>>> c662a0d97561432f4f661b7712de65d51c1d850d
  
end
