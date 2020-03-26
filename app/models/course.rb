class Course < ApplicationRecord
  has_and_belongs_to_many :careers
  belongs_to :institute

  has_many :prerequisite_courses, foreign_key: :course_id, class_name: 'CoursesPrerequisite'
  has_many :prerequisites, through: :prerequisite_courses, source: :prerequisite

  has_many :course_prerequisites, foreign_key: :prerequisite_id, class_name: 'CoursesPrerequisite'
  has_many :is_prerequisite_of, through: :course_prerequisites, source: :course

  scope :by_institute, (lambda do |institute_id|
    courses = Course.all
    courses.where(institute_id: institute_id) unless institute_id.nil?
  end)
end
