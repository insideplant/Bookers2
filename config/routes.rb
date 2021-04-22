Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/create'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only: [:index, :show, :create, :edit, :update]
  resources :books, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
