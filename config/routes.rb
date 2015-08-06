Rails.application.routes.draw do
  root 'welcome#index2'
  get '/auth/github', :as => :login
  get '/auth/github/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :tribes
  resources :users
  resources :skills



end
