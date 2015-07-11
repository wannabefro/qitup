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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150711122204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "performances", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_songs", force: :cascade do |t|
    t.integer  "performance_id"
    t.integer  "song_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "set_songs", ["performance_id"], name: "index_set_songs_on_performance_id", using: :btree
  add_index "set_songs", ["song_id"], name: "index_set_songs_on_song_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "set_songs", "performances"
  add_foreign_key "set_songs", "songs"
end
