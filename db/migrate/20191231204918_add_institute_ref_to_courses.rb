class AddInstituteRefToCourses < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :institute
  end
end
