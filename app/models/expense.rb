class Expense < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :period
end
