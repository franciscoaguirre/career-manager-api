class RemoveParityFromSemesters < ActiveRecord::Migration[6.0]
  def change
    remove_column :semesters, :parity, :integer
  end
end
