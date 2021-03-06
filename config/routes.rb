Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  resources :users
  resources :books
  resources :groups
  get '/meetings/attend/:id', to: 'meetings#attend', as: 'attend_meeting'
  get '/meetings/unattend/:id', to: 'meetings#unattend', as: 'unattend_meeting'
  resources :meetings

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'


end
