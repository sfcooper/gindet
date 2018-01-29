class ChangeDistiller < ActiveRecord::Migration[5.1]
  def change
    change_table :gins do |t|
      t.rename :distiller, :distillery
    end
  end
end
