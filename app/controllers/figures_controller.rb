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
    @figure = Figure.find_or_initialize_by(figure_params)

    unless image_real?
      flash[:error] = "Please provide a valid image URL!"
      redirect_to '/random'
      return
    end

    fig_image = @figure.images.build(image_params)
    @figure.figure_category_id = category_params

    if @figure.save
      fig_image.save! if fig_image
      flash[:success] = "Thanks for adding!"
    else
      flash[:error] = @figure.errors.full_messages.first.to_s
    end

    redirect_to '/random'
  end

  def show
  end
  
  private

  def image_real?
    img_url = image_params[:url]
    begin
      img = Mechanize.new.get(img_url)[:body]
    rescue => e
      return false if e
    end
    img.is_a?(Mechanize::Image)
  end

  def figure_params
    params.require(:figure).permit(
      :name,
      :description,
      :figure_category => :id
    )
  end

  def image_params
    params.require(:figure).require(:figure_images).permit(
      :url,
      :uploaded_by
    )
  end

  def category_params
    params.require(:figure).require(:figure_category)
  end
end
