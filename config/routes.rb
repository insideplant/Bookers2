Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/create'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books
end
