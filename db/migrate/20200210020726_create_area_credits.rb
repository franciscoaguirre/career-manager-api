class CreateAreaCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :area_credits do |t|
      t.integer :minimum_credits
      t.references :career
      t.references :area

      t.timestamps
    end
  end
end
