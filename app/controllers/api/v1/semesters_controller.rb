module Api
  module V1
    class SemestersController < ApplicationController
      before_action :authenticate_user!
      before_action :set_semester, only: [:show, :destroy, :update]

      def index
        @semesters = current_user.semesters
      end

      def show
      end

      def create
        @semester = current_user.semesters.create(semester_params)
        if @semester.errors.blank?
          render :show
        else
          render json: @semester.errors, status: :bad_request
        end
      end

      def destroy
        if @semester.destroy
          redirect_to action: :index
        else
          render status: :bad_request
        end
      end

      def update
        if @semester.update(semester_params)
          render :show
        else
          render json: @semester.errors, status: :bad_request
        end
      end

      private

      def semester_params
        params.require(:semester).permit(:year, :parity, :credits, :total_credits)
      end

      def set_semester
        @semester = current_user.semesters.find(params[:id])
      end
    end
  end
end
