class Reservation < ActiveRecord::Base
  belongs_to :patron
  belongs_to :book_club
end
