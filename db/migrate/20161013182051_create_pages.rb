class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
    User.create(email: 'anuraag.jprr@gmail.com', password: 'admin123', password_confirmation: 'admin123')
  end
end
