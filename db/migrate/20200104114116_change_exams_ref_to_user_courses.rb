class ChangeExamsRefToUserCourses < ActiveRecord::Migration[6.0]
  def change
    remove_reference :exams, :user
    remove_reference :exams, :course
    add_reference :exams, :user_course, index: true
  end
end
