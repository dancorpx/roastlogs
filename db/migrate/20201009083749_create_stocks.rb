class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.text :bean
      t.integer :amount
      t.date :buy_date
      t.boolean :instock

      t.timestamps
    end
  end
end
