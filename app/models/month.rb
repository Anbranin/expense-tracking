class Month < ActiveRecord::Base
  validates :name, :days, presence: true
  validates :days, numericality: { in: 29..31 }

  has_many :expenses, dependent: :destroy

  def expense_belonging_to(day)
    expense = Expense.find_by(month_id = id, date: day + 1)
    expense.amount
  end
end
