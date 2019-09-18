class AddColumnsToRoasts < ActiveRecord::Migration[5.2]
  def change
    add_column :roasts, :drop_temp, :string
    add_column :roasts, :turn_point, :string
    add_column :roasts, :end_heat, :string
    add_column :roasts, :end_temp, :string
  end
end
