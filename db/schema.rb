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

ActiveRecord::Schema.define(version: 20150706022023) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "koans", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problems", force: true do |t|
    t.string   "codepen_slug",                                 null: false
    t.string   "codepen_username", default: "rrgayhart",       null: false
    t.string   "full_name",        default: "Romeeka Gayhart", null: false
    t.integer  "koan_id"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "solutions", force: true do |t|
    t.string   "codepen_slug",                                 null: false
    t.string   "codepen_username", default: "rrgayhart",       null: false
    t.string   "full_name",        default: "Romeeka Gayhart", null: false
    t.integer  "koan_id"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "solutions", ["koan_id"], name: "index_solutions_on_koan_id", using: :btree

end
