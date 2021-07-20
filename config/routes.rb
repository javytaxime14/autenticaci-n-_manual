Rails.application.routes.draw do
  resources :stories
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  root 'stories#index'
  get 'my_stories', to: 'stories#my_stories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
