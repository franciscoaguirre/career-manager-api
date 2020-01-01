class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  has_many :semesters, dependent: :destroy

  has_many :user_courses, dependent: :destroy
  has_many :courses, through: :user_courses

  has_many :exams, dependent: :destroy
  has_many :exam_instances, through: :exams
end
