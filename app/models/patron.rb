class Patron < ActiveRecord::Base
  has_many :reservations
  has_many :book_clubs, :through => :reservations
end
