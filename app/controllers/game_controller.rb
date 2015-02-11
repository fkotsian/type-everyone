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
    render 'static_pages/game'
  end
end
