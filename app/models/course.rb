class Course < ApplicationRecord
  belongs_to :institute

  has_many :prerequisite_courses, foreign_key: :course_id, class_name: 'CoursesPrerequisite'
  has_many :prerequisites, through: :prerequisite_courses, source: :prerequisite

  has_many :course_prerequisites, foreign_key: :prerequisite_id, class_name: 'CoursesPrerequisite'
  has_many :is_prerequisite_of, through: :course_prerequisites, source: :course
end
