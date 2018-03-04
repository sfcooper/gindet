class CreateGinsBotanicals < ActiveRecord::Migration[5.1]
  def change
    create_table :gins_botanicals do |t|

      t.timestamps
    end
  end
end
