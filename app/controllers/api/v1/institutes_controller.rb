module Api
  module V1
    class InstitutesController < ApplicationController
      before_action :set_institute, only: [:show, :destroy, :update]

      def index
        @institutes = Institute.all
      end

      def show; end

      def create
        @institute = Institute.new(institute_params)

        if @institute.save
          render :show, status: :created
        else
          render json: @institute.errors, status: :unprocessable_entity
        end
      end

      def update
        if @institute.update(institute_params)
          render :show, status: :ok
        else
          render json: @institute.errors, status: :unprocessable_entity
        end
      end

      def destroy
        render status: :bad_request unless @institute.destroy
      end

      private

      def institute_params
        params.require(:institute).permit(:name)
      end

      def set_institute
        @institute = Institute.find(params[:id])
      end
    end
  end
end
