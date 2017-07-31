class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :description
      t.integer :length_in_pages

      t.timestamps
    end
  end
end
