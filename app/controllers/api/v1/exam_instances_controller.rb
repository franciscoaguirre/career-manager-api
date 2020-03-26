module Api
  module V1
    class ExamInstancesController < ApplicationController
      before_action :authenticate_user!
      before_action :set_exam_instance, only: [:show, :destroy, :update]

      def index
        @exam_instances = ExamInstance.all
      end

      def show; end

      def create
        @exam_instance = ExamInstance.create(exam_instance_params)
        if @exam_instance.errors.blank?
          render :show
        else
          render json: @exam_instance.errors, status: :unprocessable_entity
        end
      end

      def destroy
        render status: :bad_request unless @exam_instance.destroy
      end

      def update
        if @exam_instance.update(exam_instance_params)
          render :show
        else
          render json: @exam_instance.errors, status: :unprocessable_entity
        end
      end

      private

      def exam_instance_params
        params.require(:exam_instance).permit(:date, :status, :exam_id)
      end

      def set_exam_instance
        @exam_instance = ExamInstance.find(params[:id])
      end
    end
  end
end
