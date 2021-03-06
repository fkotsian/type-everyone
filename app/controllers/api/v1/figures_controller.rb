module Api
  module V1
    class FiguresController < ApplicationController
      respond_to :html, :json

      def index
        if params[:mythos_id]
          @figures = Figure.where(mythos_id: params[:mythos_id])
        else
          @figures = Figure.all
        end
        Rails.logger.info "LOADING FIGURES"
        Rails.logger.info @figures

        respond_with(@figures)
      end

      def new
        @figure = Figure.new
        @figure.images.build
        flash[:success] = "Yes!"
      end

      def create
        @figure = Figure.find_or_initialize_by(figure_params)

        img_error = image_errors
        if img_error
          flash[:error] = img_error
          redirect_to '/play'
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

        redirect_to '/play'
      end

      private

      def image_errors
        img_url = image_params[:url]
        begin
          img = Mechanize.new.get(img_url)
        rescue => e
          return FigureImage.default_error_message if e
        end

        return FigureImage.default_error_message unless img.is_a?(Mechanize::Image)

        begin
          # try to access height and width
          p "*" * 100
          p img
          p img.height
          p img.width
          p "*" * 100
          return FigureImage.dimension_error_message if img && img.height < 600 && img.width < 800
          return FigureImage.height_error_message if img && img.height < 600
          return FigureImage.width_error_message if img && img.width < 800
        rescue => e
          # if DNE do nothing
          p "ERROR" + "*" * 100
          p e
          p "*" * 100
        end

        # no errors found
        nil
      end

      def figure_params
        params.require(:figure).permit(
          :name,
          :description,
          :mythos_id,
          :figure_category => :id
        )
      end

      def image_params
        params.require(:figure).require(:figure_images).permit(
          :url,
          :uploaded_by,
          :uploaded,
        )
      end

      def category_params
        params.require(:figure).require(:figure_category)
      end
    end
  end
end
