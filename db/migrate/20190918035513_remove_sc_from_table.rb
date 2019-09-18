class RemoveScFromTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :roasts, :s_crack_s
    remove_column :roasts, :s_crack_e
  end
end
