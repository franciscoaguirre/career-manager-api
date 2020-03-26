class CreateCareersCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :careers_courses do |t|
      t.belongs_to :career
      t.belongs_to :course
    end
  end
end
