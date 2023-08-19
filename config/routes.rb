
Rails.application.routes.draw do
  get 'bookmarks/index'
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/update'
  get 'movies/index'
  get 'movies/new'
  get 'movies/create'
  get 'movies/update'
  get 'lists/index'
  get 'lists/new'
  get 'lists/create'
  get 'lists/update'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists do
    resources :bookmarks
  end

  resources :movies
end
