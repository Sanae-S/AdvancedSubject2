Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update] do
  	resource :relationships, only: [:create, :destroy]
  end
  resources :books do
  	resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  root 'home#top'
  get 'home/about'
end