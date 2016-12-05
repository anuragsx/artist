class AddDescriptionInExhibitions < ActiveRecord::Migration[5.0]
 def self.up
   add_column :exhibitions, :description, :text
 end

 def self.down
   remove_column :exhibitions, :description
 end
end
