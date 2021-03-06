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

ActiveRecord::Schema.define(version: 20140117131446) do

  create_table "comments", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "topic_id",   null: false
    t.text     "body",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["topic_id"], name: "index_comments_on_topic_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "favorites", force: true do |t|
    t.integer  "user_id",     null: false
    t.integer  "target_id",   null: false
    t.string   "target_type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["target_id"], name: "index_favorites_on_target_id", using: :btree
  add_index "favorites", ["target_type"], name: "index_favorites_on_target_type", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "topics", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "title",      null: false
    t.text     "body",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["user_id"], name: "index_topics_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "profile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
