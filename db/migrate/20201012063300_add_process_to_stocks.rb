class AddProcessToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :process, :string
  end
end
