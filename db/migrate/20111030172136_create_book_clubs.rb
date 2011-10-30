class CreateBookClubs < ActiveRecord::Migration
  def change
    create_table :book_clubs do |t|
      t.string :title
      t.string :sub_title
      t.string :isbn
      t.string :author
      t.string :thumbnail_url
      t.text :description
      t.text :book_staff_notes

      t.timestamps
    end
  end
end
