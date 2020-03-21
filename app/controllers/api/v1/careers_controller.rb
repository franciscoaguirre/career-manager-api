module Api
  module V1
    class CareersController < ApplicationController
      before_action :set_career, only: [:show, :destroy, :update]

      def index
        @careers = Career.all
      end

      def show
      end

      def create
        @career = Career.create(career_params)
        if @career.errors.blank?
          render :show
        else
          render json: @career.errors, status: :bad_request
        end
      end

      def destroy
        if @career.destroy
          redirect_to action: :index
        else
          render status: :bad_request
        end
      end

      def update
        if @career.update(career_params)
          render :show
        else
          render json: @career.errors, status: :bad_request
        end
      end

      private

      def career_params
        params.require(:career).permit(:bedelias_page, :required_credits, :expected_length, :plan)
      end

      def set_career
        @career = Career.find(params[:id])
      end
    end
  end
end
