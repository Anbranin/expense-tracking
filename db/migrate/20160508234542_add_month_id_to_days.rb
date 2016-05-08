class AddMonthIdToDays < ActiveRecord::Migration
  def change
    add_reference :days, :month
  end
end
