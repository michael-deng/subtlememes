Rails.application.routes.draw do
  resources :users, :memes, :tags

  root 'meme#index'
end
