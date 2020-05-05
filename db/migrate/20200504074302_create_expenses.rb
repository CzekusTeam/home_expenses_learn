class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.references :category, null: false, foreign_key: true
      t.decimal :amount, precision: 8, scale: 2
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
