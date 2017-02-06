class FiguresController < ApplicationController
  def index
    @figures = Figure.all
  end
  
  def custom
    @category = FigureCategory.find_by name: params[:category]
    @figures = Figure.where(figure_category: @category.id)
    render :index
  end

  def new
    @figure = Figure.new
    @figure.images.build
    flash[:success] = "Yes!"
  end

  def create
    p "PARAMS"
    pp params
    @figure = Figure.find_or_initialize_by(figure_params)

    # find figure image or match to existing
    fig_image = @figure.figure_images.find_or_initialize_by(image_params)

    fig_cat_id = category_params[:id]
    @figure.figure_category_id = fig_cat_id if @figure && fig_cat_id

    fail
    if @figure.save
      fig_image.save! if fig_image

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
    params.require(:figure).permit(
      :name,
      :description,
      :figure_images => :url,
      :figure_images => :uploaded_by,
      :figure_category => :id
    )
  end

  def image_params
    figure_params.require(:figure_images).permit(
      :url,
      :uploaded_by
    )
  end

  def category_params
    figure_params.require(:figure_category).permit(
      :id
    )
  end
end
