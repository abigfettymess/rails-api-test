# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_26_043436) do

  create_table "categories", force: :cascade do |t|
    t.integer "cat_id"
    t.string "cat_title"
    t.integer "cat_pages"
    t.integer "cat_subcats"
    t.integer "cat_files"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "facts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "fact"
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_facts_on_user_id"
  end

  create_table "links", force: :cascade do |t|
    t.integer "cl_from"
    t.string "cl_to"
    t.binary "cl_sortkey"
    t.date "cl_timestamp"
    t.binary "cl_sortkey_prefix"
    t.binary "cl_collation"
    t.string "cl_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "facts", "users"
end
