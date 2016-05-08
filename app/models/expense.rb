class Expense < ActiveRecord::Base
  belongs_to :day
  validates :name, :amount, :date, presence: true

end
