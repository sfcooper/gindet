class AddSlugToBotanicals < ActiveRecord::Migration[5.1]
  def change
    add_column :botanicals, :slug, :string
  end
end
