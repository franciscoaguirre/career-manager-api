module Api
  module V1
    class UserCoursesController < ApplicationController
      before_action :authenticate_user!
      before_action :set_user_course, only: [:show, :destroy, :update]

      def index
        @user_courses = current_user.user_courses
        return @user_courses if params[:semester_id].nil?

        @user_courses = @user_courses.where(semester_id: params[:semester_id])
      end

      def show; end

      def create
        @user_course = current_user.user_courses.create(user_course_params)
        if @user_course.errors.blank?
          render :show, status: :created
        else
          render json: @user_course.errors, status: :bad_request
        end
      end

      def destroy
        render status: :bad_request unless @user_course.destroy
      end

      def update
        if @user_course.update(user_course_params)
          render :show, status: :ok
        else
          render json: @user_course.errors, status: :bad_request
        end
      end

      private

      def user_course_params
        params.require(:user_course).permit(:course_id, :semester_id, :status)
      end

      def set_user_course
        @user_course = current_user.user_courses.find(params[:id])
      end
    end
  end
end
