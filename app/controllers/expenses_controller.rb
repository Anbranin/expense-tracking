class ExpensesController < ApplicationController
  def create
    Expense.create! expense_params
    redirect_to :back
  end

  private

  def expense_params
    params.permit(:month_id, :amount, :date, :name)
  end
end
