class GameController < ApplicationController
  # def play
  #   vote if params[:vote_type]
  #   render 'static_pages#game'
  # end
  
  def play
    vote_type = VoteType.find_by name: params[:commit].downcase
    if vote_type
      Vote.create(vote_type: vote_type)
    end
    
    rand_id = rand(Figure.count)
    @figure = Figure.find_by_id rand_id
    render 'games/play'
  end
end
