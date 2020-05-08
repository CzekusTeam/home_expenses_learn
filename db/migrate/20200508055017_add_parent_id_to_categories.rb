class AddParentIdToCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :parent, null: true, index: true
  end
end
