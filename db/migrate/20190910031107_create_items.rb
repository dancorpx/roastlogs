class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :link
      t.text :content

      t.timestamps
    end
  end
end
