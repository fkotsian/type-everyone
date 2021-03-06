Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :figures,       only: %w[index new create]
      resources :figure_images, only: %w[index new create show]
      resources :mythoi,        only: %w[index show categories]
      #get '/play',  to: 'game#type', as: 'game'
      post '/votes', to: 'votes#create'

      get '/figures/:mythos_id', to: 'figures#index'
      get '/mythoi/categories', to: 'mythoi#categories'
      get '/mythoi/random', to: 'mythoi#random'
    end
  end

  get '*all', to: 'static_pages#landing'

  root to: 'static_pages#landing'
end
