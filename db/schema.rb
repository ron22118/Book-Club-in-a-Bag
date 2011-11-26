# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111113061043) do

  create_table "book_clubs", :force => true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.string   "isbn"
    t.string   "author"
    t.string   "thumbnail_url"
    t.text     "description"
    t.text     "book_staff_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patrons", :force => true do |t|
    t.string   "library_card"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.text     "patron_staff_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", :force => true do |t|
    t.integer  "book_club_id"
    t.integer  "patron_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "status_flag"
    t.datetime "returned_datetime"
    t.text     "reservation_staff_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
