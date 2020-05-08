class AddOrganisationToCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :organisation, null: true, foreign_key: true
  end
end
