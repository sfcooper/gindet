class ChangeDecimaleInGins < ActiveRecord::Migration[5.1]
  def change
    change_column :gins, :abv, :decimal, precision: 5, scale: 2
  end
end
