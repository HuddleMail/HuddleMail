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

ActiveRecord::Schema.define(version: 20160227030912) do

  create_table "dis_groups", force: :cascade do |t|
    t.string   "disname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dist_group_recipient_maps", force: :cascade do |t|
    t.integer "dist_group_id"
    t.integer "recipient_id"
  end

  add_index "dist_group_recipient_maps", ["dist_group_id"], name: "index_dist_group_recipient_maps_on_dist_group_id"
  add_index "dist_group_recipient_maps", ["recipient_id"], name: "index_dist_group_recipient_maps_on_recipient_id"

  create_table "dist_groups", force: :cascade do |t|
    t.string "email",   null: false
    t.text   "pub_key", null: false
  end

  create_table "profile_dist_group_maps", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "dist_group_id"
  end

  add_index "profile_dist_group_maps", ["dist_group_id"], name: "index_profile_dist_group_maps_on_dist_group_id"
  add_index "profile_dist_group_maps", ["profile_id"], name: "index_profile_dist_group_maps_on_profile_id"

# Could not dump table "profiles" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "recipients", force: :cascade do |t|
    t.string "email",   limit: 254, null: false
    t.text   "pub_key",             null: false
  end

end
