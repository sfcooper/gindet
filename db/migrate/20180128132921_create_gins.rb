class CreateGins < ActiveRecord::Migration[5.1]
  def change
    create_table :gins do |t|
      t.string :name
      t.string :distiller
      t.text :text
      t.string :slug

      t.timestamps
    end
  end
end
