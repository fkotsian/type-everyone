Rails.application.routes.draw do
  
  resources :figures,       only: %w[index new create show]
  resources :figure_images, only: %w[index new create show]

  get '/where', to: 'figures#custom'
  get '/game',  to: 'static_pages#play'
  post '/play', to: 'game#play'  
  
  root to: 'static_pages#home'
end
