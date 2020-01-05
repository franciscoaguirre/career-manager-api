module Api
  module V1
    class ExamsController < ApplicationController
      before_action :authenticate_user!
      before_action :set_exam, only: [:show, :update, :destroy]

      def index
        @exams = current_user.exams
      end

      def create
        @exam = current_user.exams.build(exam_params)

        if @exam.save
          render :show, status: :created
        else
          render json: @exam.errors, status: :unprocessable_entity
        end
      end
      
      def show
      end

      def update
        if @exam.update(exam_params)
          render :show, status: :updated
        else
          render json: @exam.errors, status: :unprocessable_entity
        end
      end

      def destroy
        if @exam.destroy
          redirect_to action: :index
        else
<<<<<<< HEAD
          render :show, status: :ok
=======
          render json: @exam, status: :ok
>>>>>>> Add exams controller
        end
      end

      private 
      
      def set_exam
        @exam = Exam.find(params[:id])
      end

      def exam_params
        params.require(:exam).permit(:status, :expiration_date, :attempts, :user_course_id)
      end
    end
  end
end
