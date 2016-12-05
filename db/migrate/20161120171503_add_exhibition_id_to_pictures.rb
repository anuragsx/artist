class AddExhibitionIdToPictures < ActiveRecord::Migration[5.0]
 def self.up
   add_column :pictures, :exhibition_id, :integer
 end

 def self.down
   remove_column :pictures, :exhibition_id
 end
end
