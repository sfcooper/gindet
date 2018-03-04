class RemoveBotanicalsColumnFromGins < ActiveRecord::Migration[5.1]
  def change
    remove_column :gins, :botanicals
  end
end
