class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :text
      t.string :slug
      t.timestamps
    end
  end
end
