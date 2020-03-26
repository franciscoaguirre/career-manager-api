class AddNameToCareers < ActiveRecord::Migration[6.0]
  def change
    add_column :careers, :name, :string
  end
end
