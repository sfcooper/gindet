class AddPicToGin < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :gins, :pic
  end

  def self.down
    remove_attachment :gins, :pic
  end
end
