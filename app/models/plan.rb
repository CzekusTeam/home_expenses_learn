class Plan < ApplicationRecord
  belongs_to :period
  belongs_to :category
end
