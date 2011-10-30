class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :bookclub_id
      t.integer :patron_id
      t.date :start_date
      t.date :end_date
      t.string :status_flag
      t.datetime :returned_datetime
      t.text :reservation_staff_notes

      t.timestamps
    end
  end
end
