class AddAbvToGins < ActiveRecord::Migration[5.1]
  def change
    add_column :gins, :abv, :float
  end
end
