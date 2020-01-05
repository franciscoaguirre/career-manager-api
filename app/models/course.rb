class Course < ApplicationRecord
  belongs_to :institute

  has_many :prerequisite_courses, foreign_key: :course_id, class_name: 'CoursesPrerequisite'
  has_many :prerequisites, through: :prerequisite_courses, source: :prerequisite

  has_many :course_prerequisites, foreign_key: :prerequisite_id, class_name: 'CoursesPrerequisite'
  has_many :is_prerequisite_of, through: :course_prerequisites, source: :course

  scope :by_institute, -> (institute_id) do
    courses = Course.all
    courses = courses.where(institute_id: institute_id) unless institute_id.nil?
  end
end
