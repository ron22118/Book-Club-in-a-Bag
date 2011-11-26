class RenameReservationBookClubId < ActiveRecord::Migration
  def up
    rename_column :reservations, :bookclub_id, :book_club_id
  end

  def down
    rename_column :reservations, :book_club_id, :bookclub_id
  end
end
