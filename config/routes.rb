Rails.application.routes.draw do

  get ':uid' => 'posts#show', as: :short_post
  
  resources :posts

  root 'posts#new'
end
