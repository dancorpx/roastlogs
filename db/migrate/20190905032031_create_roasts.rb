class CreateRoasts < ActiveRecord::Migration[5.2]
  def change
    create_table :roasts do |t|
      t.date :date
      t.string :beans
      t.integer :s_weight
      t.integer :f_weight
      t.integer :air_temp
      t.string :roaster
      t.time :f_crack_s
      t.time :f_crack_e
      t.time :s_crack_s
      t.time :s_crack_e
      t.time :total_time
      t.time :cooling_time
      t.text :roast_notes

      t.timestamps
    end
  end
end
