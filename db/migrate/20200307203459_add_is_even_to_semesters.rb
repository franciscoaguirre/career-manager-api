class AddIsEvenToSemesters < ActiveRecord::Migration[6.0]
  def change
    add_column :semesters, :is_even, :boolean, default: false
  end
end
