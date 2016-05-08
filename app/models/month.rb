class Month < ActiveRecord::Base
  has_many :days, dependent: :destroy
  has_many :expenses, through: :days

  validates :name, presence: true

end
