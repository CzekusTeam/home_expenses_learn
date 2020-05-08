class CreatePeriods < ActiveRecord::Migration[6.0]
  def change
    create_table :periods do |t|
      t.integer :month
      t.integer :year
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
