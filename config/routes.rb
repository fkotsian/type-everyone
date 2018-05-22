Rails.application.routes.draw do

  resources :figures,       only: %w[index new create show]
  resources :figure_images, only: %w[index new create show]

  #get '/play',  to: 'game#type', as: 'game'
  post '/votes', to: 'votes#create'

  get '*all', to: 'static_pages#landing'

  root to: 'static_pages#landing'
end
