module Api
  module V1
    class CoursesController < ApplicationController
      before_action :set_course, only: [:show, :destroy, :update]

      def index
        @courses = Course.by_institute(params[:institute_id])
      end

      def show; end

      def create
        @course = Course.create(course_params)
        if @course.errors.blank?
          render :show
        else
          render json: @course.errors, status: :unprocessable_entity
        end
      end

      def destroy
        render status: :bad_request unless @course.destroy
      end

      def update
        if @course.update(course_params)
          render :show
        else
          render json: @course.errors, status: :bad_request
        end
      end

      private

      def course_params
        params.require(:course).permit(:name, :credits, :institute_id)
      end

      def set_course
        @course = Course.find(params[:id])
      end
    end
  end
end
