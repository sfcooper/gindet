class AddSnippetToGins < ActiveRecord::Migration[5.1]
  def change
    change_table :gins do |t|
      t.string :snippet
    end
  end
end
