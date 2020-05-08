class AddPeriodToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_reference :expenses, :period, null: true, foreign_key: true
  end
end
