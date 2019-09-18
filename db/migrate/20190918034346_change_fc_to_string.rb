class ChangeFcToString < ActiveRecord::Migration[5.2]
  def change
    change_column :roasts, :f_crack_s, :string
    change_column :roasts, :f_crack_e, :string
  end
end
