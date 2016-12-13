class AddImageColumnToBio < ActiveRecord::Migration[5.0]
  def change
	  def up
	    add_attachment :bios, :image
	  end

	  def down
	    remove_attachment :bios, :image
	  end
  end
end
