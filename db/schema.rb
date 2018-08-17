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

ActiveRecord::Schema.define(version: 2018_08_14_200800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mathquest", primary_key: "qid", id: :serial, force: :cascade do |t|
    t.integer "firstval", null: false
    t.string "mathoper"
    t.integer "secondval", null: false
    t.integer "resultval", null: false
    t.boolean "iscorrect", null: false
    t.datetime "starttime", null: false
    t.datetime "endtime", null: false
    t.index ["qid"], name: "mathquest_qid_uindex", unique: true
  end

  create_table "mathquests", force: :cascade do |t|
    t.integer "firstval", null: false
    t.string "mathoper", null: false
    t.integer "secondval", null: false
    t.boolean "iscorrect", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mathset", primary_key: "testid", id: :serial, force: :cascade do |t|
    t.integer "rights", null: false
    t.integer "total", null: false
    t.datetime "starttime", null: false
    t.datetime "endtime", null: false
    t.index ["testid"], name: "mathset_testid_uindex", unique: true
  end

  create_table "mathsets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "mathquest", "mathset", column: "qid", primary_key: "testid", name: "mathquest_mathset_testid_fk"
end
