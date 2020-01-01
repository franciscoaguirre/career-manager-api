class CreateUserCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_courses do |t|
      t.references :user
      t.references :course
      t.references :semester
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
