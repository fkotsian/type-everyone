class GameController < ApplicationController
  def type
    # vote_type = VoteType.find_by name: params[:commit].downcase
    # figure_id = params[:figure]
    # if vote_type && figure_id
    #   Vote.create(vote_type: vote_type, figure_id: figure_id)
    # end

    @figure = Figure.random_figure
    @figure_image = @figure.rand_image_url
    @vote = Vote.new(figure_id: @figure.id)
  end
end
