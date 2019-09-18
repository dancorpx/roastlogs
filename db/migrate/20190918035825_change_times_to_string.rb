class ChangeTimesToString < ActiveRecord::Migration[5.2]
  def change
    change_column :roasts, :total_time, :string
    change_column :roasts, :cooling_time, :string
  end
end
