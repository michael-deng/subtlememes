Rails.application.routes.draw do
  resources :users, :memes, :tags

  root 'memes#index'
end
