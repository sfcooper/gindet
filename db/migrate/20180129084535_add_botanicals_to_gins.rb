class AddBotanicalsToGins < ActiveRecord::Migration[5.1]
  def change
    add_column :gins, :botanicals, :string
  end
end
