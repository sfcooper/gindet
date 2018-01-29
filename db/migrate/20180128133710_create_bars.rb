class CreateBars < ActiveRecord::Migration[5.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :street
      t.string :area
      t.string :city
      t.string :postcode
      t.string :website
      t.string :phonenumber
      t.text :text
      t.string :slug
      t.timestamps
    end
  end
end
