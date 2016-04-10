require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
  test 'expense attributes must not be empty' do
    expense = Expense.new
    assert expense.invalid?
    assert expense.errors[:name].any?
    assert expense.errors[:amount].any?
    assert expense.errors[:date].any?
  end

end
