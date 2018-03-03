class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :text
      t.date :date
      t.time :time
      t.float :price
      t.string :slug
      t.string :snippet

      t.timestamps
    end
  end
end
