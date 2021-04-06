class DropCoursesPrerequisites < ActiveRecord::Migration[6.0]
  def change
    drop_table :courses_prerequisites
  end
end
