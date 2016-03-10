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

ActiveRecord::Schema.define(version: 20160308161158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "considerations", force: true do |t|
    t.string   "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "considerations_koans", force: true do |t|
    t.integer "koan_id"
    t.integer "consideration_id"
  end

  add_index "considerations_koans", ["consideration_id"], name: "index_considerations_koans_on_consideration_id", using: :btree
  add_index "considerations_koans", ["koan_id"], name: "index_considerations_koans_on_koan_id", using: :btree

  create_table "koans", force: true do |t|
    t.string   "name",                                    null: false
    t.string   "codepen_slug",                            null: false
    t.string   "codepen_username",  default: "rrgayhart", null: false
    t.text     "client_email_body",                       null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "github_slug"
  end

  create_table "solutions", force: true do |t|
    t.string   "codepen_slug",                             null: false
    t.string   "codepen_username",   default: "rrgayhart", null: false
    t.integer  "koan_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "solutions", ["koan_id"], name: "index_solutions_on_koan_id", using: :btree

end
