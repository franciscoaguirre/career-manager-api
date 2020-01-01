class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.references :user
      t.references :course

      t.integer :status, default: 0
      t.datetime :expiration_date
      t.integer :attempts, default: 0

      t.timestamps
    end
  end
end
