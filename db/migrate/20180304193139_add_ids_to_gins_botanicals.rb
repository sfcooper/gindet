class AddIdsToGinsBotanicals < ActiveRecord::Migration[5.1]
  def change
    change_table :gins_botanicals do |t|
      t.references :gin, foreign_key: true
      t.references :botanical, foreign_key: true
    end
  end
end
