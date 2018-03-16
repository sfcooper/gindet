class ChangePriceToDecimalInEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :price, :decimal, precision: 5, scale: 2
  end
end
