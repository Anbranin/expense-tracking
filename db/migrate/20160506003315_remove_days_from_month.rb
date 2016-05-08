class RemoveDaysFromMonth < ActiveRecord::Migration
  def change
    remove_column :months, :days, :integer
  end
end
