class Expense < ActiveRecord::Base
  validates :name, :amount, :date, presence: true

  belongs_to :month
end
