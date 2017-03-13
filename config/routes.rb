Rails.application.routes.draw do
    
  resources :figures,       only: %w[index new create show]
  resources :figure_images, only: %w[index new create show]

  get '/where', to: 'figures#custom'
  get '/game',  to: 'game#type'
  get '/play',  to: 'game#type'
  get '/random',  to: 'game#type'
  get '/type',  to: 'game#type'
  post '/votes', to: 'votes#create'
  
  root to: 'game#type'
end
