class VotesController < ApplicationController
  def create
    @vote = Vote.create(
      figure_id: vote_params[:figure_id],
      vote_type_id: vote_type.id
    )
    redirect_to game_path
  end

  private

  def vote_params
    params.require(:vote).permit(:figure_id)
  end

  def vote_type
    VoteType.find_by(name: params["type"].downcase)
  end
end
