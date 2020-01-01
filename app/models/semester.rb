class Semester < ApplicationRecord
  belongs_to :user
  has_many :user_courses, dependent: :destroy
  has_many :courses, through: :user_courses
end
