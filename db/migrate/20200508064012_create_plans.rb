class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.references :period, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
