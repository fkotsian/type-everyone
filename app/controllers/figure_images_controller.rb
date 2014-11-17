class FigureImagesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @image = FigureImage.new(figure_image_params)
    if @image.save
      redirect_to 'figures#new'
    else
      flash[:error].now = @image.errors.full_messages.first.to_s
      render 'figures#new'
    end
  end

  def show
  end
  
  private
  def figure_image_params
    params.require(:figure_image).permit(:url, :size, :figure_id)
  end
end
