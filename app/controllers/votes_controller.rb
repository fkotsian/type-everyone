class VotesController < ApplicationController
  def create
    @vote = Vote.create(
      figure_id: vote_params[:figure_id],
      vote_type_id: vote_type.id
    )
    total_votes = Vote.for_figure(vote_params[:figure_id])
                    .count
    agreed_votes = Vote.for_figure(vote_params[:figure_id])
                    .for_type(vote_type.id)
                    .count
    flash[:success] = "#{(agreed_votes/(total_votes*1.0)*100).round}% of voters agree with you!"
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
