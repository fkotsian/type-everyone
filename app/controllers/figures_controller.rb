class FiguresController < ApplicationController
  def index
  end

  def new
    @figure = Figure.new
    @figure_image = FigureImage.new
  end

  def create
  end

  def show
  end
end
