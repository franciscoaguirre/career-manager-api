class CoursesPrerequisite < ApplicationRecord
  belongs_to :course, class_name: 'Course', foreign_key: :course_id
  belongs_to :prerequisite, class_name: 'Course', foreign_key: :prerequisite_id
end
