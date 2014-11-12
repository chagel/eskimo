Rails.application.routes.draw do

  get ':id' => 'posts#show', as: :short_post
  
  resources :posts

  root 'posts#new'
end
