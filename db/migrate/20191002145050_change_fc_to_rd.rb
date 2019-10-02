class ChangeFcToRd < ActiveRecord::Migration[5.2]
  def change
    rename_column :roasts, :f_crack_e, :roast_dev
  end
end
