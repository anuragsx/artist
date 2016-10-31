class AddImageColumnToNews < ActiveRecord::Migration[5.0]
  def up
    add_attachment :news, :image
  end

  def down
    remove_attachment :news, :image
  end
end
