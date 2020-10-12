class ChangeAmountToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :stocks, :amount, :float
  end
end
