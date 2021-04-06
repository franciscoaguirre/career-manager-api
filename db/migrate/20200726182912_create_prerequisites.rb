class CreatePrerequisites < ActiveRecord::Migration[6.0]
  def change
    create_table :prerequisites do |t|
      t.boolean :negated, default: false
      t.string :type
      t.boolean :disjunction, default: false
      t.integer :total_credits, default: 0
      t.boolean :exam, default: false
      t.references :course
      t.references :prerequisite
      t.references :area_credit
      t.references :course_prerequisite
    end
  end
end
