class Day < ActiveRecord::Base

 has_many :expenses 
 belongs_to :month
end
