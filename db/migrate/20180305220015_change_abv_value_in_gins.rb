class ChangeAbvValueInGins < ActiveRecord::Migration[5.1]
  def change
    change_column :gins, :abv, :decimal
  end
end
