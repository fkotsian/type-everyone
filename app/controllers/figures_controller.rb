class FiguresController < ApplicationController
  def index
    @figures = Figure.all
  end
  
  def custom(figure_type)
    @figures = Figure.where(type: figure_type)
    render :index
  end

  def new
    @figure = Figure.new
    @figure.figure_images.build
  end

  def create
    @figure = Figure.new(figure_params)
    if @figure.save
      flash[:success] = "Thanks for adding!"
      redirect_to 'figures#new'
    else
      flash[:error] = @figure.errors.full_messages.first.to_s
      render :new
    end
  end

  def show
  end
  
  private
  def figure_params
    params.require(:figure).permit(:name, :figure_image_id, :figure_category_id)
  end
end
