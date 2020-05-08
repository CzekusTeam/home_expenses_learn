class Category < ApplicationRecord
  belongs_to :parent, class_name: 'Category', optional: true
  belongs_to :organisation, optional: true
end
