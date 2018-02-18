class AddPictureToBlog < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :blogs, :picture
  end

  def self.down
    remove_attachment :blogs, :picture
  end
end
