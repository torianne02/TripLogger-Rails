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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_31_215408) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.text "travel_advice"
    t.integer "tourist_rating"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "native_language"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "user_id"
    t.integer "city_id"
    t.integer "country_id"
    t.string "length_of_trip"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "uid"
  end

end
