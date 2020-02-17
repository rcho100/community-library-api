Rails.application.routes.draw do
  post 'signup', to: 'users#create'
  post 'login', to: 'auth#create'
  delete 'logout', to: 'auth#create'
  patch 'books/:id/borrow', to: 'books#borrow'
  patch 'books/:id/return', to: 'books#return'

  resources :grabs
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
