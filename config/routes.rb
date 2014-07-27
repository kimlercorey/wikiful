Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome/index'

  resources :sessions
  resources :users
  resources :articles
  resources :categories

  root 'welcome#index'

end
