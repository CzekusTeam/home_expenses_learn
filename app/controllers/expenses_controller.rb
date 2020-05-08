class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = Expense.all
  end

  def new
    @form = ExpenseForm.new Expense.new
  end

  def create
    @form = ExpenseForm.new Expense.new, expense_params
    if @form.save
      flash[:success] = 'Expense added'
      redirect_to expenses_path
    else
      render 'new'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:amount, :description, :category, :period)
  end
end
