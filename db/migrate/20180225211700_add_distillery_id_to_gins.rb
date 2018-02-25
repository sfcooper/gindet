class AddDistilleryIdToGins < ActiveRecord::Migration[5.1]
  def change
    add_column :gins, :distillery_id, :integer
  end
end
