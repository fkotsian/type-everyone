module Api
  module V1
    class MythoiController < ApplicationController
      respond_to :html, :json

      def index
        @mythoi = Mythos.all
        respond_with @mythoi
      end

      def categories
        render :ok, Mythoi.categories
      end

      def random
        render :ok, Mythoi.limit(5).order("RANDOM()")  # "RAND()" for mysql
      end

      def show
        @mythos = Mythos.find_by(id: params[:id])
        respond_with @mythos
      end

      private

      def mythos_params
        params.require(:mythos).permit(
          :id
        )
      end
    end
  end
end
