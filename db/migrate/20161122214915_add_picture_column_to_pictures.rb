class AddPictureColumnToPictures < ActiveRecord::Migration[5.0]
  def up
    add_attachment :pictures, :picture
  end

  def down
    remove_attachment :pictures, :picture
  end
end
