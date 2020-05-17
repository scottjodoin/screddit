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

ActiveRecord::Schema.define(version: 2020_05_17_234334) do

  create_table "comments", force: :cascade do |t|
    t.string "body"
    t.integer "upvotes"
    t.integer "downvotes"
    t.boolean "deleted"
    t.datetime "edit_timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moderatings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sub_reddit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_reddit_id"], name: "index_moderatings_on_sub_reddit_id"
    t.index ["user_id"], name: "index_moderatings_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "link"
    t.string "body"
    t.integer "upvotes"
    t.integer "downvotes"
    t.boolean "deleted"
    t.datetime "edit_timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_reddits", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscribings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sub_reddit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_reddit_id"], name: "index_subscribings_on_sub_reddit_id"
    t.index ["user_id"], name: "index_subscribings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

end
