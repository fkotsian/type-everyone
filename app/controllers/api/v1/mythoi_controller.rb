module Api
  module V1
    class MythoiController < ApplicationController
      respond_to :html, :json

      def index
        @mythoi = Mythos.all
        respond_with @mythoi
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
