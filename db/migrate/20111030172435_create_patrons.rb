class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.string :library_card
      t.string :first_name
      t.string :last_name
      t.string :contact_phone
      t.string :contact_email
      t.text :patron_staff_notes

      t.timestamps
    end
  end
end
