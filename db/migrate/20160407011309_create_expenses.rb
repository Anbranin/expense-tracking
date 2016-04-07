class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.decimal :amount
      t.integer :date

      t.timestamps null: false
    end
  end
end
