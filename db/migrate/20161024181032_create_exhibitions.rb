class CreateExhibitions < ActiveRecord::Migration[5.0]
  def change
    create_table :exhibitions do |t|
      t.string :title
      t.string :exhibition_by
      t.string :address
      t.string :from_data
      t.string :to_date

      t.timestamps
    end
  end
end
