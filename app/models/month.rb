class Month < ActiveRecord::Base
  validates :name, :days, presence: true
  validates :days, numericality: { greater_than_or_equal_to: 29 }

  has_many :expenses
end
