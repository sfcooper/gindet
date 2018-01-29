class AddKownginsToBars < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :knowngins, :string
  end
end
