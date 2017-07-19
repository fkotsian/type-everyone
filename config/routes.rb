Rails.application.routes.draw do

  resources :figures,       only: %w[index new create show]
  resources :figure_images, only: %w[index new create show]

  get '/play',  to: 'game#type', as: 'game'
  post '/votes', to: 'votes#create'

  root to: 'game#type'
end
