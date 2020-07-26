class SimplePrerequisite < Prerequisite
  has_one :area_credits
  has_one :course_prerequisite, class_name: "Course",
                                foreign_key: "course_prerequisite_id"
end
