class GameController < ApplicationController
  NO_FIGURE_IN_CATEGORY_ERROR = 'No Figures in that category, showing random Figures!'

  def type
    # vote_type = VoteType.find_by name: params[:commit].downcase
    # figure_id = params[:figure]
    # if vote_type && figure_id
    #   Vote.create(vote_type: vote_type, figure_id: figure_id)
    # end

    category_id = params[:category]

    @figure = Figure.random_figure(category_id: category_id)

    # if no figure in cat, find a random figure
    if !@figure
      flash[:error] = NO_FIGURE_IN_CATEGORY_ERROR
      @figure = Figure.random_figure
    end

    @figure_image = @figure.rand_image_url
    @vote = Vote.new(figure_id: @figure.id)
  end
end
