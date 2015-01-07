class AddPhotoToGrocery < ActiveRecord::Migration
  def self.up
    add_attachment :groceries, :photo
  end

  def self.down
    remove_attachment :groceries, :photo
  end
end
