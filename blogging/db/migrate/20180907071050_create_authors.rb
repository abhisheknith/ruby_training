class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :email
      t.string :userid
      t.timestamps
    end
  end
end
