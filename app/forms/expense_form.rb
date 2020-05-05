require_relative  '../../lib/form_object.rb'

class ExpenseForm < FormObject
  attr_accessor :amount, :description, :category

  validates :amount, numericality: { greater_than: 0 }
  validates_presence_of :category

  def initialize(expense, args = {})
    super args
    @model = expense
  end

  def save
    return unless valid?
    update if @model.persisted?
    create unless @model.persisted?
  end

  def create
    Expense.create(amount: amount, description: description, category_id: category, user_id: 1)
  end

  def self.model_name
    Expense.model_name
  end

end