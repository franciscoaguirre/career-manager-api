class CreateCareers < ActiveRecord::Migration[6.0]
  def change
    create_table :careers do |t|
      t.string :bedelias_page
      t.integer :required_credits
      t.integer :expected_length
      t.integer :plan

      t.timestamps
    end
  end
end
