class CreateSemesters < ActiveRecord::Migration[6.0]
  def change
    create_table :semesters do |t|
      t.references :user
      t.integer :year
      t.integer :parity
      t.integer :credits
      t.integer :total_credits

      t.timestamps
    end
  end
end
