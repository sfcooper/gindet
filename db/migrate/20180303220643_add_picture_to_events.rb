class AddPictureToEvents < ActiveRecord::Migration[5.1]
  def change
    def self.up
      add_attachment :events, :picture
    end

    def self.down
      remove_attachment :events, :picture
    end
  end
end
