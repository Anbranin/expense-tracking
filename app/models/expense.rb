class Expense < ActiveRecord::Base
  validates :name, :amount, :date, presence: true
end
