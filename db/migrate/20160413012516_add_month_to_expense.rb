class AddMonthToExpense < ActiveRecord::Migration
  def change
    add_column :expenses, :month_id, :integer
  end
end
